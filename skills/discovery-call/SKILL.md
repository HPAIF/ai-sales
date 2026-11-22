---
name: discovery-call
description: Prepare the founder for a discovery call (goals, hypotheses, SPIN and Mom Test questions, MEDDPICC gaps to fill) and, after the call, turn the founder's notes into a structured record — pains in the prospect's words, qualification, next step and pipeline update. Writes ai-team/sales/research/DC-XXXX-*.md. Use for "prepare my call with X", "here are my notes from the call with X".
---

# discovery-call

Frameworks: **SPIN** (situation → problem → implication → need-payoff questions; few situation
questions, more implication and need-payoff), **The Mom Test** (ask about specific past behaviour,
not hypothetical futures; listen more than talk), and **MEDDPICC** (metrics, economic buyer,
decision criteria, decision process, paper process, identified pain, champion, competition) as
the checklist of what a qualified deal needs. For small, fast deals a **BANT**-style check
(budget, authority, need, timing) is enough — say which you use. Discovery is for learning, not
pitching. Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

## Before the call
1. **Load memory**: account brief, deal row and event log, earlier calls, ICP and personas,
   positioning, decisions (approved prices — so the founder knows what may be said), active
   lessons.
2. **Prep sheet** from `${CLAUDE_PLUGIN_ROOT}/templates/discovery-call.md` →
   `ai-team/sales/research/DC-XXXX-account-slug.md`: call goal; what we know (cited) and
   hypotheses to test; 8–12 questions (a few situation, mostly problem, implication and
   need-payoff; "tell me about the last time…"); MEDDPICC fields still unknown; likely
   objections with honest answers; the next step to propose; what **not** to promise (prices,
   terms or features not decided — rule 2).

## After the call
3. **Structure the founder's notes** (from chat or `inbox/`): pains in the prospect's own words
   (quote only what the founder wrote down), current alternative, metrics, people and roles,
   decision and paper process, competition, timing, objections, commitments made by either side.
   Never add anything the notes don't say — use `[UNKNOWN: …]`.
4. **Qualify** — fill the MEDDPICC table (known / partial / unknown, with evidence); move the
   deal's stage only if the exit criterion in `pipeline.md` is met.
5. **Commitments** — if the founder promised something (a follow-up, a document, a price), add
   an obligation; if a price, discount or term was mentioned that isn't a recorded decision,
   flag it for a founder decision (and `accountant` / `lawyer` hand-off).
6. **Next step** — one concrete, dated next step in the deal row; offer a follow-up draft
   (`outreach-draft`). Feature requests → hand-off to `product`; ICP and messaging evidence →
   hand-off to `marketing`.
7. `ai-sales:log-job`.
