---
name: setup
description: Set up (or repair/upgrade) the AI sales member in the current project — creates the private ai-team/ workspace (shared company files + ai-team/sales/ with target accounts, pipeline, drafts and proposals), asks the target market and language, links to the ICP owned by marketing, registers sales in team.md, and offers privacy and scheduled runs. Use on first use in a project, when the workspace is missing, or after a plugin update that changes the workspace.
---

# setup

Template files are in `${CLAUDE_PLUGIN_ROOT}/skills/setup/workspace/`. Never overwrite an
existing file in `ai-team/` — the workspace may already hold real history.

1. **Explain** in two lines what will be created (`ai-team/` private workspace) and that nothing
   leaves the machine.
   **Location:** if an `ai-team/` already exists in this folder or a parent folder, join it —
   never create a second one. Otherwise ask where to create it: in this folder (default), or in a
   parent company folder when this project is one of several products (layout
   `<company>/ai-team/` next to `<company>/projects/<product>/`).
2. **Ask** (one question at a time, skip what is already known — if
   `ai-team/marketing/icp.md` exists, offer its target market as the default):
   - target market — countries or regions, and the B2B segment the company sells to;
     "not sure yet" is fine — record `TBD` and an obligation;
   - language — the answer language (skip if `ai-team/team.md` → Settings already has one) and
     the outreach language(s) for drafts (default: the answer language).
3. **Create shared files if missing** (another member may have created them already):
   `ai-team/README.md`, `ai-team/team.md`, `ai-team/company/profile.md`,
   `ai-team/company/documents.md`, `ai-team/company/products/_template.md`. In a new `team.md`
   fill the date, `workspace_contract: 1` and the answer language; leave `Jurisdiction` as it is
   (the lawyer or accountant sets it). Fill the profile's stage date if it is new.
4. **Create the member folder** `ai-team/sales/` from the template's `sales/` folder:
   `learnings.md`, `accounts.md`, `pipeline.md`, `history/{journal,decisions,obligations}.md`,
   `drafts/README.md`, `proposals/README.md`, `research/README.md`, `digests/README.md`,
   `inbox/README.md`.
5. **Market and ICP:** write the target market, outreach language(s) and today's date at the top
   of `accounts.md`. ICP: if `ai-team/marketing/icp.md` exists, read it — marketing owns it. If
   not, create `ai-team/sales/icp-draft.md` from `${CLAUDE_PLUGIN_ROOT}/templates/icp-draft.md`
   and tell the founder that `ai-marketing` would own the ICP (it adopts this draft when set up).
6. **Register** a row in `team.md`: `sales | ai-sales | ai-sales:sales | ai-team/sales/ |
   <plugin version> | <today> | target accounts, prospect research, outreach drafts, pipeline,
   discovery, proposals, deal reviews`.
7. **First journal entry** `J-0001 · <today> · setup` and obligations:
   - `O-0001` "Fill in company/profile.md and a product file in company/products/" (due in 14
     days) — only if the profile is still mostly `TBD`;
   - `O-0002` "Record approved prices and discount limits as decisions (with the accountant if
     installed)" (due in 14 days) — proposals cannot quote prices until this is done;
   - `O-0003` "Build the first target-account list (target-accounts)" (due in 14 days);
   - if deals already exist (the founder mentions them, or notes are in the project), offer to
     enter them in `pipeline.md` — the founder confirms each row.
8. **Offer, don't force** (ask each; do only what is approved):
   - **Privacy:** if the project is a git repo, add `ai-team/` to `.gitignore`; suggest
     `git init` inside `ai-team/` for private history. Remind the founder that `ai-team/sales/`
     holds people's data.
   - **Permissions:** add `WebSearch` and `WebFetch` to the project's `.claude/settings.json`
     allow list so public prospect research runs without prompts (show the exact change first).
   - **Scheduled runs:** a weekly `deal-review` (e.g. Mondays 09:30). Create it if a scheduling
     tool is available in this session; otherwise explain how to schedule it in the Claude app.
9. **Upgrade mode** (workspace exists): compare with the template, create only missing files or
   folders, apply migrations listed in `CHANGELOG.md` for versions newer than the one in
   `team.md`, update the version in `team.md`, and log what changed.
10. Finish with a short summary: what exists now, the three most useful first requests ("build
    our target-account list", "prepare my call with X", "review the pipeline"), and `log-job`.
