---
name: log-job
description: Record a job in the company's sales memory — journal entry plus updates to the pipeline, target accounts, decisions, obligations, shared company facts and learnings. Use at the end of every task that produced research, a draft, a proposal, a pipeline change, a decision, a deadline or a change of company facts (including scheduled runs).
---

# log-job

All history files are **append-only**: add rows/entries; to correct, add a new entry that
references the old one. Never delete history (the one exception — removing a person's data at
their request — is in RULES.md rule 3). Get today's date with `date +%F`.
Paths below are under `ai-team/sales/` unless they start with `ai-team/`.

1. **Journal** — append to `history/journal.md` (next J-number, format at the top of the file):
   request, what was done and with which framework, outputs and their status, records touched,
   public sources relied on, follow-ups.
2. **Pipeline** — new deal → a row in `pipeline.md` (next DL-id); stage change, next step or
   value change → update the row **and** append an event line `DL-xxxx · date · event`. A stage
   moves only when its exit criterion is met (table in `pipeline.md`). Won/lost → record the
   reason in the event.
3. **Accounts** — new account → a row in `accounts.md` with fit and public evidence; status
   changes; objections and removal requests → the do-not-contact list.
4. **Decisions** — the founder decided a price, discount limit, term, pilot, segment or
   disqualification rule → append to `history/decisions.md` with the reasoning and any member
   answers (`accountant:…`, `lawyer:…`).
5. **Obligations** — every follow-up the founder promised, next step with a date, RFP deadline,
   draft or proposal waiting for approval (type `approval`) or recommended action → append a row
   to `history/obligations.md` (keep the exact table format; due date `YYYY-MM-DD` or `—`). Mark
   finished ones `done` (don't delete).
6. **Drafts and proposals** — set each touched file's `status:`. When the founder says it was
   sent, record `sent` with date and channel (the founder sent it — you never do).
7. **Company facts** — new or changed facts (a customer signed, a price list approved) → update
   `ai-team/company/profile.md`, the product file in `ai-team/company/products/` or
   `ai-team/company/documents.md`, and say in the journal entry what changed. If it contradicts
   another member's files, flag it to the founder.
8. **Evidence for marketing** — won/lost reasons, buyer language and ICP mismatches → note them
   in the journal entry as a hand-off for marketing (you never edit `ai-team/marketing/`).
9. **Learnings** — anything this task taught you → append to `learnings.md` with the right scope.
10. Confirm to the founder in one line what was recorded (e.g. "Logged J-0011, DL-0004 →
    qualified, O-0015, OD-0007 ready").
