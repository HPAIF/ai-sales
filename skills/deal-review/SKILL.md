---
name: deal-review
description: Review the pipeline (weekly) or one deal — check each deal's stage against its exit criteria, find MEDDPICC gaps, stale deals and missing or overdue next steps, open prices and terms, and propose the founder's actions for the week; also captures won/lost reasons as evidence for the ICP. Writes a digest. Runs weekly on a schedule; also use for "review the pipeline", "where is deal X", "why did we lose X".
---

# deal-review

Frameworks: **pipeline stages with buyer-verifiable exit criteria** (in `pipeline.md`) and
**MEDDPICC** as the qualification checklist (lighter **BANT**-style checks for small deals);
discovery pipeline and qualified pipeline are counted separately. Sources:
`${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

Scheduled runs (no founder present) never ask questions — they record them as obligations.

1. **Load memory**: `pipeline.md` and event log, `accounts.md`, discovery notes and proposals for
   open deals, decisions, obligations, the previous digest, active lessons.
2. **For each open deal**: is the stage right (exit criterion met, with evidence)? next step
   present and dated? days since last update vs. the stage norm (set by the founder, or 14 days
   by default)? MEDDPICC gaps? open prices or terms waiting for the founder, accountant or lawyer?
   Propose a stage correction only with the evidence; the founder confirms.
3. **Pipeline view**: count and estimated value by stage (discovery vs. qualified separately),
   deals added and closed since the last review, deals without a next step. Use only values the
   founder confirmed; never forecast with invented probabilities.
4. **Won / lost / dropped** since the last review: reason in the prospect's words where known,
   pattern vs. the ICP → hand-off note for `marketing`; a lesson → learning.
5. **Write** `ai-team/sales/digests/YYYY-MM-DD-deal-review.md`:
   ```
   # Deal review — YYYY-MM-DD (since …)
   ## This week's actions for the founder (most important first)
   ## Pipeline by stage (discovery / qualified / proposal / negotiation)
   ## Deals at risk (stale, no next step, stage without evidence, MEDDPICC gaps)
   ## Waiting on decisions (prices, terms, member answers)
   ## Won / lost and what it says about the ICP
   ## Drafts and proposals waiting for approval
   ## Agent self-improvement (pending learnings)
   ```
6. **Update memory**: new actions and follow-ups → obligations; stage corrections only after the
   founder confirms (scheduled runs propose them in the digest); count `general` learnings that
   are `pending` and suggest `ai-sales:improve` if 3+; `ai-sales:log-job` with request
   "scheduled: deal-review" when scheduled.
7. Never contact anyone or change a deal's terms. Research and write files only.
