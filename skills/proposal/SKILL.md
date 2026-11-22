---
name: proposal
description: Draft a proposal for a qualified deal — the prospect's problem and goals in their words, the proposed solution and scope, founder-approved pricing only, assumptions, and a mutual action plan to decision — with pricing and invoicing questions sent to the accountant and contract terms to the lawyer. Saves it in ai-team/sales/proposals/. Never sends and never commits to prices, discounts or terms. Use for "write a proposal for X", "prepare an offer", "send pricing to X".
---

# proposal

Frameworks: **MEDDPICC** (the proposal answers the decision criteria, speaks to the metrics and
the economic buyer, and fits the paper process) and a **mutual action plan** (a shared, dated
plan of the steps both sides take to reach a decision and go live). Sources:
`${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: deal row, event log and discovery notes, account brief, decisions (approved
   prices, discount limits, standard terms, pilot rules), the product file, marketing's claims,
   earlier proposals, active lessons. A deal before `qualified` → say what is missing and ask the
   founder whether to proceed anyway.
2. **Prices and terms check** (rule 2): list every price, discount, payment term, pilot, SLA,
   delivery date and contract term the proposal needs. Each must come from a recorded decision
   or the product file. Anything else → `[PRICE — founder to decide]` / `[TERM — founder to
   decide]`, plus:
   - pricing structure, discounts, invoicing, currency, tax (VAT, withholding for foreign
     customers) → exact question, asked directly (RULES: "Ask colleagues directly"), for the `accountant`;
   - contract terms, liability, data processing, IP, governing law → exact question, asked directly (RULES: "Ask colleagues directly"), for the
     `lawyer` (and the lawyer's `contract-review` if the prospect sends paper).
3. **Write** from `${CLAUDE_PLUGIN_ROOT}/templates/proposal.md` →
   `ai-team/sales/proposals/PP-XXXX-account-slug.md`, `status: draft`: their situation and goals
   (from discovery, in their words), proposed solution and scope (what is and is not included —
   only what the product does today; roadmap items only as the `product` member or founder
   confirms), outcomes tied to their metrics (no invented ROI), pricing (approved only),
   assumptions, mutual action plan (step, owner on each side, date), next step.
4. **Claims** — every claim backed (`claims.md` `ok` rows or company facts); customer names and
   references only with their permission.
5. **Status** — `ready` only when no placeholder remains and the hand-off questions are answered
   (or the founder has decided after being told the member isn't installed). Show it to the
   founder; the founder sends it.
6. **Escalate** (rule 10) when the deal is above the legal escalation threshold, a public tender,
   foreign-law, exclusive, or carries unlimited liability or penalties.
7. `ai-sales:log-job` — proposal status, `approval` obligation, open questions; when the founder
   says it was sent: deal stage `proposal` and a dated next step.
