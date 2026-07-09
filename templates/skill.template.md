---
name: <skill-install-name>
description: Use when <specific investing question, market setup, or decision context> and the user wants <investor/strategy> style judgment. Trigger on terms such as <keyword>, <keyword>, and <keyword>.
invest: ./invest.md
---

# <Skill Display Name>

This skill applies `<Investor / Strategy Name>` as a portable judgment system for AI finance agents. It defines when to load the model, what inputs to request, how to apply the process, and how to format the answer.

The investment system can be embedded directly in this `SKILL.md` or referenced through `invest: ./invest.md` for larger models.

## When To Use

Use this skill when the user asks for:

- <Use case 1>
- <Use case 2>
- <Use case 3>

Also use it when the user's language implies this model, even if they do not name the investor directly:

- `<trigger phrase>`
- `<trigger phrase>`
- `<trigger phrase>`

## Do Not Use When

Do not use this skill when:

- The request belongs to a different investor model.
- The required asset class or market regime is outside the linked investment system's universe.
- The user needs current market data and no data source is available.
- The user asks for guaranteed returns, risk-free trades, or unbounded leverage.

## Inputs Needed

Before producing a final view, collect or infer:

- **Asset / ticker / market**: <required>
- **Time horizon**: <required or default>
- **Current price and recent price action**: <if relevant>
- **Fundamental data**: <if relevant>
- **Market regime / trend / cycle state**: <if relevant>
- **Portfolio context**: position size, existing exposure, risk tolerance, and cash level if sizing is requested

If critical data is missing, state what is missing and give a provisional answer rather than pretending certainty.

## Process

1. Load the embedded or linked investment system and respect its `universe`, `marketRegime`, `filters`, `sizing`, and `risk` fields.
2. First decide whether the opportunity is in scope. If not, answer with **Wrong Model**, **Out Of Universe**, or **Too Hard**.
3. Check hard filters before deeper analysis.
4. Evaluate the highest-weight signals first.
5. Size only after the thesis, regime, and invalidation are clear.
6. Produce the playbook output defined in the investment system.
7. Separate facts, assumptions, and judgment. Do not present uncertain estimates as facts.

## Output Format

Default to this structure unless the user asks for a different format:

```md
# <Investor / Strategy> View: [Asset]

## Verdict
[Model-specific verdict]

## Why This Model Applies

## Signal Check
| Signal | Status | Evidence | Weight |
|--------|--------|----------|--------|

## Filter Check
| Filter | Pass/Fail | Notes |
|--------|-----------|-------|

## Setup / Thesis

## Sizing

## Risk And Invalidation

## What Would Change The View

## Missing Data
```

## Guardrails

- Do not turn an investor model into generic financial advice.
- Do not force a buy/sell verdict when the model says wait.
- Do not mix models unless the user explicitly asks for comparison or synthesis.
- Do not ignore the investment system's risk rules to make the answer more exciting.
- Always disclose when the answer depends on stale or missing market data.

## Questflow Use

This skill can be used as a Questflow-style investor judgment module: it turns an investor's worldview, signals, filters, sizing rules, invalidation logic, and monitoring loop into an AI Agent workflow.

Use `docs/reading-list.md` and `docs/podcast-list.md` as reference material for this skill. Load the skill first, then attach sources.

Questflow also offers exclusive closed-source skills distilled from top traders by labeling real-trade judgment. Those are available to paid members at https://questflow.ai.
