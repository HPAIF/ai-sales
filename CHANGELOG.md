# Changelog

All notable changes to the AI sales member. Versions follow semver: patch = fixes and wording,
minor = new skill / workspace files, major = breaking workspace change.
Entries that need a workspace change list a **Migration** step; `setup` (upgrade mode) applies it.

## 0.1.2 — 2026-11-23
- Ask colleagues directly, never through the founder: @mention in group chats, the Agent tool
  as main agent, "Question for @member" when called by the lead.

## 0.1.1 — 2026-11-23
- Rule "Be concise": shortest answer that keeps all important information (warnings, numbers,
  dates, sources, decisions); long only when the content needs it.

## 0.1.0 — 2026-11-22
- First public release — a basic version, to be specialised later.
- Agent `sales`, rules (`RULES.md`), skills: setup, target-accounts, prospect-research,
  outreach-draft, discovery-call, proposal, deal-review, log-job, improve.
- Workspace folder `ai-team/sales/` (contract v1): target accounts with a do-not-contact list,
  pipeline register with stage exit criteria, history, drafts, proposals, research, digests,
  inbox. Reads the ICP owned by the marketing member (`ai-team/marketing/icp.md`); keeps a
  provisional `icp-draft.md` only when marketing is not installed. The workspace is found in the
  project folder or any parent folder.
- Templates: account brief, outreach draft, discovery call, proposal (with mutual action plan),
  provisional ICP.
- Self-improvement: `learnings.md` + `improve` (anonymised, founder-approved pull requests).
- Frameworks and sources summarised in `docs/research.md`.
