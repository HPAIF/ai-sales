# Pipeline (CRM register)

> One row per deal. Written by `log-job`, `discovery-call`, `proposal` and `deal-review`. Never
> delete a row; change the stage and add a dated event below. Keep the column order — the
> session hook reads Stage (3rd column) and Next step due (6th). Dates `YYYY-MM-DD` or `—`.
> Values are estimates the founder confirmed; prices only from `history/decisions.md`.

## Stages and exit criteria (buyer-verifiable, not seller impressions)
| Stage | Means | Exit to the next stage when… |
|---|---|---|
| `target` | account fits the ICP, nobody contacted yet | the founder sends a first message |
| `contacted` | the founder reached out | the prospect replies and agrees to a call |
| `discovery` | call booked or held | pain confirmed in the prospect's words **and** a champion named |
| `qualified` | pain, metrics, economic buyer and decision process outlined (MEDDPICC basics) | the prospect asks for a proposal or agrees to evaluate |
| `proposal` | the founder sent a proposal | the prospect agrees in principle / starts negotiating terms |
| `negotiation` | terms, paperwork and approvals in progress | signed (`won`) or declined (`lost`) |
| `won` · `lost` · `on-hold` · `dropped` | closed or paused — record the reason | — |

## Deals
| ID | Account | Stage | Est. value | Next step | Next step due | Last update | Source | MEDDPICC gaps |
|---|---|---|---|---|---|---|---|---|

## Event log
> `DL-xxxx · YYYY-MM-DD · event` — e.g. "DL-0003 · 2027-02-10 · discovery held; champion: head of ops; next: demo 2027-02-17".
