# Contributing

Improvements are welcome — better procedures, templates, frameworks and checks. Many will arrive
as pull requests from the agent's own `improve` skill.

## The one rule: no company data
This repository is public. Never commit anything from an `ai-team/` workspace: company, product,
customer or prospect names, people, deal values, prices, discounts, call notes, emails, dates of
private events, quotes from proposals. Use neutral examples ("a mid-size logistics company",
"a head of operations"). Pull requests that contain company or personal data are closed.

## What goes where
| Change | File | Version bump |
|---|---|---|
| A rule every company should follow | `RULES.md` (rules may be added or clarified, never weakened) | patch |
| A procedure | `skills/<skill>/SKILL.md` | patch |
| A new skill | `skills/<name>/SKILL.md` + rows in the `RULES.md` skills table and `README.md` | minor |
| A document format | `templates/` | patch |
| A framework or source | `docs/research.md` | patch |
| Workspace files | `skills/setup/workspace/sales/` + a **Migration** note in `CHANGELOG.md` | minor |
| The shared workspace contract (`README.md`, `team.md`, `company/`) | coordinate in the `ai-team` repo first | major |

Hard rules that may never be weakened: never send messages or contact prospects · never commit
to prices, discounts or terms · public, lawful, minimal prospect data (no scraping, no bought
lists) · honest selling · read the memory first · log every job · append-only history · never
invent · confidentiality · never act for the company · escalation.

## Release
1. Bump `version` in `.claude-plugin/plugin.json` (patch / minor / major — see CHANGELOG).
2. Add a `CHANGELOG.md` entry (with a Migration step if the workspace changes).
3. `claude plugin validate .` must pass.
4. Merge to `main`. Users get it with `/plugin update ai-sales@ai-team`.
