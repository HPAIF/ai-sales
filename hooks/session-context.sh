#!/bin/bash
# AI sales — SessionStart hook.
# Prints the sales member's memory for this project: date, company stage, target market,
# overdue/upcoming obligations, last journal entries, open deals by stage, overdue next steps,
# drafts and proposals awaiting the founder's approval, inbox, pending learnings, latest digest.
# Silent when the project has no ai-team/sales workspace.
set -u
# Find the nearest workspace: ai-team/sales in the project folder or any parent folder
# (a company folder can hold ai-team/ next to projects/<product>/).
dir="${CLAUDE_PROJECT_DIR:-$PWD}"
WS=""
while [ -n "$dir" ] && [ "$dir" != "/" ]; do
  if [ -d "$dir/ai-team/sales" ]; then WS="$dir/ai-team"; break; fi
  dir=$(dirname "$dir")
done
[ -n "$WS" ] || exit 0
ME="$WS/sales"
cd "$ME" || exit 0

version=$(grep -m1 '"version"' "${CLAUDE_PLUGIN_ROOT:-.}/.claude-plugin/plugin.json" 2>/dev/null | sed 's/.*"version": *"\([^"]*\)".*/\1/')
today=$(date +%F)
soon=$(date -v+30d +%F 2>/dev/null || date -d '+30 days' +%F)

echo "=== AI SALES ${version:+v$version }— session context (${today}) ==="
echo "Rules: ${CLAUDE_PLUGIN_ROOT:-<plugin>}/RULES.md (agent ai-sales:sales). Never contact prospects — the founder sends. Never commit to prices or terms. Log every job (log-job)."
echo "Workspace: $WS  (every ai-team/... path in the rules and skills means this folder)"

stage=$(grep -m1 '^- \*\*Stage:\*\*' "$WS/company/profile.md" 2>/dev/null | sed 's/^- \*\*Stage:\*\* *//')
market=$(grep -m1 '^- \*\*Target market:\*\*' accounts.md 2>/dev/null | sed 's/^- \*\*Target market:\*\* *//' | cut -c1-80)
if [ -f "$WS/marketing/icp.md" ]; then icp="ai-team/marketing/icp.md"; elif [ -f icp-draft.md ]; then icp="ai-team/sales/icp-draft.md (provisional)"; else icp="none yet"; fi
echo "Company stage: ${stage:-unknown} · Target market: ${market:-unknown} · ICP: ${icp}"
echo

echo "--- Sales obligations: overdue or due by ${soon} ---"
if [ -f history/obligations.md ]; then
  awk -F'|' -v today="$today" -v soon="$soon" '
    /^\| O-/ {
      id=$2; due=$3; type=$4; what=$5; status=$7
      gsub(/^ +| +$/, "", id); gsub(/^ +| +$/, "", due); gsub(/^ +| +$/, "", type)
      gsub(/^ +| +$/, "", what); gsub(/^ +| +$/, "", status)
      if (status == "open" && due ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && due <= soon) {
        flag = (due < today) ? "OVERDUE " : ""
        printf "%s%s  %s  [%s] %s\n", flag, id, due, type, what; n++
      }
      if (status == "open" && due == "—") u++
    }
    END { if (n == 0) print "(none)"; if (u > 0) printf "(+ %d open items without a date)\n", u }' history/obligations.md
fi
echo

echo "--- Last journal entries ---"
j=$(grep '^## J-' history/journal.md 2>/dev/null | tail -n 6)
echo "${j:-(none)}"
echo

echo "--- Open deals by stage ---"
if [ -f pipeline.md ]; then
  awk -F'|' -v today="$today" '
    /^\| DL-/ {
      id=$2; acct=$3; st=$4; nxt=$6; due=$7
      gsub(/^ +| +$/, "", id); gsub(/^ +| +$/, "", acct); gsub(/^ +| +$/, "", st)
      gsub(/^ +| +$/, "", nxt); gsub(/^ +| +$/, "", due)
      if (st == "won" || st == "lost" || st == "dropped") { closed[st]++; next }
      if (!(st in cnt)) order[++k] = st
      cnt[st]++; open++
      if (nxt == "" || nxt == "—") nonext++
      if (due ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && due < today) od[++m] = sprintf("OVERDUE next step  %s  %s  %s — %s", id, due, acct, nxt)
    }
    END {
      if (open == 0) print "(no open deals)"
      else { line = ""; for (i = 1; i <= k; i++) line = line (i > 1 ? " · " : "") order[i] ": " cnt[order[i]]; print line }
      for (i = 1; i <= m; i++) print od[i]
      if (nonext > 0) printf "(%d open deal(s) without a next step)\n", nonext
      printf "Closed: won %d · lost %d\n", closed["won"] + 0, closed["lost"] + 0
    }' pipeline.md
fi
echo

ready=0; wip=0; list=""
for f in drafts/*.md proposals/*.md; do
  [ -e "$f" ] || continue
  [ "$(basename "$f")" = "README.md" ] && continue
  st=$(grep -m1 '^status:' "$f" | awk '{print $2}')
  case "$st" in
    ready) list="${list}${f}\n"; ready=$((ready+1)) ;;
    draft) wip=$((wip+1)) ;;
  esac
done
echo "--- Drafts and proposals awaiting the founder's approval (the founder sends) ---"
if [ $ready -eq 0 ]; then echo "(none)"; else printf "%b" "$list"; fi
echo "In progress: ${wip}"
echo

pending=$(grep -c '^| L-[0-9]* .*| general .*| pending' learnings.md 2>/dev/null || true)
inbox=$(find inbox -type f ! -name 'README.md' ! -name '.*' 2>/dev/null | wc -l | tr -d ' ')
latest=$(ls -1 digests/20*.md 2>/dev/null | tail -n 1)
echo "Inbox: ${inbox:-0} file(s) · Pending general learnings: ${pending:-0}$( [ "${pending:-0}" -ge 3 ] && echo ' → suggest ai-sales:improve') · Latest digest: ${latest:-none yet}"
exit 0
