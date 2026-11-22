# AI Sales

An in-house sales assistant for founders doing **founder-led B2B sales**, running in Claude Code.
Part of the **[AI Team](https://github.com/HPAIF/ai-team)** — agents that work together for your
company.

It builds your target-account list from the ICP, researches prospects from **public information
only**, drafts outreach, keeps a pipeline (CRM) register, prepares your discovery calls and
structures your notes, drafts proposals with a mutual action plan, and reviews your deals every
week. Pricing and invoicing questions go to the accountant member, contract terms to the lawyer.

> **It never contacts anyone and never commits you to anything.** It never sends emails or
> messages, books meetings, or offers prices, discounts or terms you haven't decided. It doesn't
> scrape personal data or use bought lists.

## Install

In Claude Code:

```
/plugin marketplace add HPAIF/ai-team
/plugin install ai-sales@ai-team
```

Then, in your project, say **"set up the AI sales"**. The `setup` skill creates (or joins) the
private `ai-team/` workspace, asks your target market and language, links to the ICP, and offers
`.gitignore`, permissions and a weekly deal review. Nothing leaves your machine.

To share the setup with your team, commit this to the project's `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "ai-team": { "source": { "source": "github", "repo": "HPAIF/ai-team" } }
  },
  "enabledPlugins": { "ai-sales@ai-team": true }
}
```

## Use it

Talk normally — Claude hands sales work to the `ai-sales:sales` agent — or start a session as the
sales member: `claude --agent ai-sales:sales`.

| You say | What happens (skill) |
|---|---|
| "Build our target-account list" | ICP-fit accounts with public evidence (`target-accounts`) |
| "Research Acme before I reach out" | cited account brief, roles, angle (`prospect-research`) |
| "Draft a first email to their head of ops" | outreach draft for you to send (`outreach-draft`) |
| "Prepare my call with Acme" / "here are my call notes" | SPIN/MEDDPICC prep sheet, structured notes, next step (`discovery-call`) |
| "Write a proposal for Acme" | proposal + mutual action plan, approved prices only (`proposal`) |
| "Review the pipeline" | deals by stage, risks, this week's actions (`deal-review`) |
| "I sent OD-0003 today" / "Acme signed" | pipeline and history updated (`log-job`) |
| "Improve yourself" | anonymised upgrade proposal for this plugin (`improve`) |

Each session in a project with a workspace starts with overdue follow-ups and obligations,
recent jobs, open deals by stage, overdue next steps and drafts waiting for your approval
(session hook).

**Scheduled run** (offered by `setup`): a weekly `deal-review`.

## How it is built

```
RULES.md                 hard rules: never contact prospects, never commit to prices or terms,
                         public lawful minimal data, honest selling, never invent…
agents/sales.md          the agent (reads RULES.md, the ICP and the workspace)
skills/                  setup · target-accounts · prospect-research · outreach-draft ·
                         discovery-call · proposal · deal-review · log-job · improve
templates/               account brief, outreach draft, discovery call, proposal, provisional ICP
docs/research.md         the frameworks behind the skills, with sources
hooks/                   session-start context
```

Frameworks it relies on: ICP and personas, founder-led sales, SPIN, The Mom Test, MEDDPICC
(BANT for small deals), pipeline stages with buyer-verifiable exit criteria, and mutual action
plans. See [docs/research.md](docs/research.md).

Your data lives in **your project**, never in the plugin:

```
ai-team/
├── team.md                  installed members, settings
├── company/                 shared with other members: profile, documents, products/<product>.md
├── marketing/icp.md         the ICP (owned by the marketing member; sales reads it)
└── sales/                   learnings, accounts (+ do-not-contact), pipeline, history (journal,
                             decisions, obligations), drafts, proposals, research, digests, inbox
```

See the [workspace contract](https://github.com/HPAIF/ai-team/blob/main/docs/workspace.md).

## Privacy
- The plugin is public; your workspace is private and holds people's data. Keep `ai-team/` out of
  public repositories (`setup` offers to add it to `.gitignore`) — `git init` inside it for a
  private history.
- Prospect research uses public sources only, keeps business facts with their source, and never
  stores sensitive data. People who object go on a do-not-contact list and their data is removed.
  Lawful-basis and notice questions for your target market go to the lawyer member.
- The sales member never puts workspace content (pipeline, prices, notes) into web searches.
- Files the agent reads are processed by the model you use in Claude Code.

## Self-improvement
1. After corrections, mistakes, lost-deal lessons or missing steps, the sales member writes a
   lesson to `ai-team/sales/learnings.md` and applies it from then on.
2. Lessons useful to everyone are marked `general`. The `improve` skill turns them into an
   anonymised pull request to this repository — only after you approve the exact text, and never
   one that weakens the hard rules.
3. Merged improvements reach every user with the next plugin update.

## Team hand-offs
Sales works with the other AI Team members through the shared workspace: it **reads the ICP
owned by marketing** (`ai-team/marketing/icp.md`) and sends won/lost evidence back; pricing,
discounts, invoicing and tax questions go to the **accountant**; contract terms, NDAs, DPAs and
prospect-data rules to the **lawyer**; security questionnaires to **security** and **cto**;
feature requests to **product**. Without the marketing member it keeps a provisional ICP that
marketing adopts later. If a member isn't installed, it names the plugin (`ai-<member>`).

## Upgrading
`/plugin marketplace update ai-team`, then `/plugin update ai-sales@ai-team` (restart Claude
Code). Run "set up the AI sales" again to apply workspace migrations; it never overwrites your
history.

## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md). License: [MIT](LICENSE).
