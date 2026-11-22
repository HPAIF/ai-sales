---
name: target-accounts
description: Build or refresh the target-account list from the ICP (owned by the marketing member) — find companies that fit using public sources only, score fit A/B/C with cited evidence and trigger events, and keep the do-not-contact list. Writes ai-team/sales/accounts.md. Use for "who should we go after", "build a target list", "find accounts like X", or after the ICP changes.
---

# target-accounts

Frameworks: **ICP** (account-level fit: industry, size, geography, business model, tools,
trigger events — personas come later, in `prospect-research`) and **founder-led sales** focus: a
short list of best-fit accounts the founder can work personally beats a long list.
Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: the ICP (`ai-team/marketing/icp.md`, or `ai-team/sales/icp-draft.md`),
   `accounts.md` (incl. do-not-contact), `pipeline.md`, decisions (segments, disqualification
   rules), active lessons. No ICP yet → help draft `icp-draft.md` (if marketing isn't installed)
   or hand off to marketing's `icp-personas`, and stop the list until there is one.
2. **Criteria** — turn the ICP into must-haves, nice-to-haves and disqualifiers. Show them to
   the founder if they changed since the last list.
3. **Find candidates** from public sources: industry directories and associations, public
   registries, conference exhibitor and speaker lists, the company's own pages, press, job posts
   (signals of a trigger event), lookalikes of won customers. Search for the *segment*, never for
   the company's private facts (rule 8). No scraping tools, no bought lists (rule 3).
4. **Score** each account A/B/C with the evidence (link and date) and a trigger / why-now if
   one is public. Skip anyone on the do-not-contact list. Never invent a fact to make an account
   fit — use `[UNKNOWN: …]`.
5. **Write** new rows to `accounts.md` (status `candidate`); mark accounts that no longer fit
   `not a fit` with the reason. Keep the list to what the founder can work (ask: how many new
   conversations a week?).
6. **Propose next steps**: which A-accounts to research first (`prospect-research`), and which
   should become `target` deals in `pipeline.md` (founder confirms).
7. **ICP evidence** — patterns that contradict the ICP (e.g. a segment that keeps showing
   intent) → hand-off note for marketing.
8. `ai-sales:log-job`.
