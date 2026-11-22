# Research behind the AI sales member

What sales looks like at an early-stage B2B startup, and the established frameworks the rules
and skills rely on — and which ones fit. Short paraphrases with links; read the sources for
detail. Researched 2026-11-22. Most framework write-ups online are vendor blogs; they are marked
as such — prefer the original books.

## What sales should do at an early-stage B2B startup: founder-led sales

- Early on the founder sells. Discovery calls are for learning (arrive with a hypothesis and ask
  sharp questions about pain, priority and timing), not for pitching; a prospect counts as
  qualified only once pain and a champion are confirmed, so discovery pipeline and qualified
  pipeline are tracked separately. The goal is to turn founder intuition into a repeatable
  playbook before hiring sellers.
  [NYU Entrepreneurial Institute — founder-led sales](https://entrepreneur.nyu.edu/blog/2026/07/20/sales-101-founder-led-sales-meghan-gill/) ·
  [First Round Review — how to nail founder-led sales](https://review.firstround.com/0-5m-how-to-nail-founder-led-sales) ·
  [Lenny's Newsletter — Jen Abel on founder-led sales](https://www.lennysnewsletter.com/p/jen-abel) ·
  [Insightly — founder-led sales](https://www.insightly.com/episodes/founder-led-sales/)

**Used for:** the role (the founder talks, the agent prepares and tracks), stage definitions,
`discovery-call`, `deal-review`.

## ICP, target accounts and personas

- The ICP describes the account (industry, size, location, business model, tech stack, buying
  signals); personas describe the people in the buying group. Build the ICP from your best
  actual customers, keep it narrow, and use it to prioritise target accounts.
  [Close — ICP vs. buyer persona](https://close.com/blog/ideal-customer-profile-vs-buyer-persona) ·
  [ZoomInfo — ideal customer profile](https://pipeline.zoominfo.com/marketing/ideal-customer-profile)

**Used in:** `target-accounts`, `prospect-research`. The ICP file itself is owned by the
marketing member (`ai-team/marketing/icp.md`); sales reads it.

## Discovery questions — SPIN and The Mom Test

- **SPIN** (Neil Rackham, 1988, based on research into roughly 35,000 sales calls): situation,
  problem, implication and need-payoff questions; successful sellers ask fewer situation
  questions and more implication and need-payoff questions, and the questions are a guide, not a
  script. (Vendor summaries.)
  [Salesforce — SPIN selling](https://www.salesforce.com/blog/spin-selling/) ·
  [HubSpot — SPIN selling guide](https://blog.hubspot.com/sales/spin-selling-the-ultimate-guide)
- **The Mom Test** (Rob Fitzpatrick): talk about the customer's life rather than your idea, ask
  about specific past behaviour rather than hypothetical futures, and listen more than you talk.
  [Shortform — what is the Mom Test](https://www.shortform.com/blog/what-is-the-mom-test/) ·
  [Sachin Rekhi — primer on the Mom Test](https://sachinrekhi.com/the-mom-test-rob-fitzpatrick)

**Used in:** `discovery-call` (question plan), `outreach-draft` (ask to learn, not to pitch).

## Qualification — MEDDPICC (and when BANT is enough)

- **MEDDIC / MEDDPICC**: metrics, economic buyer, decision criteria, decision process, paper
  process, identified pain, champion, competition. MEDDPICC adds paper process and competition to
  the original MEDDIC (which came out of PTC in the 1990s; accounts of its exact origin differ).
  Built for complex B2B deals; the full checklist can be overkill for short, transactional sales.
  [HubSpot — MEDDPICC methodology](https://blog.hubspot.com/sales/meddpicc-methodology) ·
  [Close — MEDDPICC](https://close.com/blog/meddpicc) ·
  [Outreach — what is MEDDPICC](https://www.outreach.io/resources/blog/what-is-meddpicc)
- **BANT** (budget, authority, need, timeline — usually attributed to IBM in the 1950s): simple
  and seller-focused; criticised as too simple for multi-stakeholder B2B deals. Modern advice:
  discuss value before budget and don't over-weight a single authority.
  [Capterra — updating BANT](https://www.capterra.com/resources/bant-sales-process/) ·
  [ZoomInfo — BANT](https://pipeline.zoominfo.com/sales/bant-sales-qualification-process) ·
  [Salesforce — BANT](https://www.salesforce.com/blog/sales/what-is-bant-lead-generation/)

**What fits:** MEDDPICC as the checklist of what a qualified deal needs (used lightly — "known /
partial / unknown" — not as a scoring ritual); a BANT-style check only for small, fast deals.
**Used in:** `discovery-call`, `proposal`, `deal-review`, the `MEDDPICC gaps` column in
`pipeline.md`.

## Pipeline stages and exit criteria

- Stage exit criteria should be buyer actions that can be observed and verified, not seller
  impressions; early-stage companies should define 4–5 stages of their own rather than a CRM's
  generic stages and close percentages; time ("Q4 deals") is a filter, not a stage.
  [Holloway — Founding Sales: pipeline management (Pete Kazanjy)](https://holloway.com/g/founding-sales/sections/pipeline-management) ·
  [Close — designing your sales pipeline](https://help.close.com/best-practices/build-a-sales-process/designing-your-sales-pipeline) ·
  [HubSpot — sales pipeline stages](https://blog.hubspot.com/sales/sales-pipeline-stages-visual-guide)

**Used in:** `pipeline.md` (stage table), `deal-review`, `log-job` (a stage moves only on its exit
criterion).

## Proposals — mutual action plan

- A mutual action plan is a document buyer and seller build together, listing the steps, owners
  on both sides and dates needed to reach a decision (and go live) — a shared plan rather than a
  seller's private close plan. (Vendor sources; their success statistics are vendor data.)
  [Salesforce — mutual action plan](https://www.salesforce.com/blog/mutual-action-plan/) ·
  [Outreach — mutual action plans](https://outreach.io/resources/blog/how-were-using-mutual-action-plans-to-transform-enterprise-sales) ·
  [CustomerThink — the persuasive power of a mutual action plan](https://customerthink.com/?p=931196)

**Used in:** `proposal`, `templates/proposal.md`.

## Privacy and outreach rules (why prospect data is public, lawful and minimal)

These are examples; the rules of the company's own target market are the lawyer member's job.

- UK/EU: data-protection law applies to B2B marketing whenever personal data is processed.
  Legitimate interests can be a lawful basis for direct marketing, but it needs a documented
  balancing test, must be named in the privacy notice, and the person's objection overrides it;
  screen lists against objectors; bought lists are high-risk.
  [ICO — business-to-business marketing](https://ico.org.uk/for-organisations/direct-marketing-and-privacy-and-electronic-communications/business-to-business-marketing/) ·
  [ICO — legitimate interests](https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/lawful-basis/a-guide-to-lawful-basis/legitimate-interests/)
- GDPR Article 14: when personal data comes from somewhere other than the person (public
  sources included), the person must be told — at the latest at the first communication when the
  data is used to contact them.
  [GDPR Article 14 (gdpr-info.eu)](https://gdpr-info.eu/art-14-gdpr/) ·
  [legislation.gov.uk — Article 14 (UK version)](https://www.legislation.gov.uk/eur/2016/679/article/14)
- US: CAN-SPAM covers business-to-business email too — accurate headers and subject, a postal
  address, a working opt-out honoured promptly; hiring a vendor doesn't shift responsibility.
  [FTC — CAN-SPAM compliance guide](https://www.ftc.gov/business-guidance/resources/can-spam-act-compliance-guide-business)

**Used in:** hard rule 3, `prospect-research` (privacy note), `outreach-draft` (required
elements), the do-not-contact list in `accounts.md`.
