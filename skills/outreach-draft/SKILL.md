---
name: outreach-draft
description: Draft a first outreach message, a short follow-up sequence, or a reply to a prospect for the founder to send — personalised from the account brief, honest, short, one clear ask, with the sender identification and opt-out elements the target market requires checked with the lawyer. Saves it in ai-team/sales/drafts/. Never sends. Use for "write an email/LinkedIn message to X", "follow up with X", "reply to this prospect".
---

# outreach-draft

Frameworks: **founder-led sales** (messages come from the founder, are specific and ask to learn,
not to pitch), **The Mom Test** spirit (ask about their situation, not for compliments), and the
company's messaging from marketing's `positioning.md`. Sources: `${CLAUDE_PLUGIN_ROOT}/docs/research.md`.

1. **Load memory**: the account brief (`research/AB-*`), the deal and its event log, earlier
   drafts to this account, the do-not-contact list, positioning and claims (marketing), decisions,
   active lessons, the outreach language in `accounts.md`. No brief → run `prospect-research`
   first, or write a clearly generic draft and say so.
2. **Checks before writing**:
   - person or company on the do-not-contact list → stop;
   - an open lawyer question on prospect data or cold-outreach rules for this market → you may
     write the draft but it stays `draft`;
   - the message must not quote a price, discount or term the founder has not decided (rule 2).
3. **Write** from `${CLAUDE_PLUGIN_ROOT}/templates/outreach-draft.md` →
   `ai-team/sales/drafts/OD-XXXX-slug.md`, `status: draft`: a specific reason for writing (a
   public trigger, cited), one relevant problem as a question, one line of proof (an `ok` claim
   from `claims.md` or a company fact), one small ask (a short call, a question to answer).
   Under ~120 words for a first message. For a sequence: 2–3 follow-ups, each adding something
   new, spaced several business days apart; the founder decides whether to send each.
4. **Required elements** — note in the draft what the target market requires for this kind of
   message (e.g. who is sending, a way to opt out, a privacy notice for prospect data) as the
   lawyer answered; if no answer is on file, list it as an open lawyer question.
5. **Honesty** — no invented familiarity ("loved your post" when you didn't read one), no fake
   urgency, no names of customers who haven't agreed to be named, no unsupported numbers.
6. **Status** — `ready` only when steps 2–5 are clear. Show the draft and tell the founder where
   and how to send it. You never send, schedule, connect or post.
7. `ai-sales:log-job` — draft status, `approval` obligation, and (when the founder confirms it
   was sent) the deal's stage `contacted` with a follow-up obligation.
