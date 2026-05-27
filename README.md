![Investor Skills - mental models from history's greatest investors](assets/social-poster.png)

# Investor Skills

Mental models from top investors, translated into practical AI-agent skills.

[Website](https://fundsarena.ai) · [GitHub](https://github.com/xuboyuebobb/investorskills) · Skills · Contributing · FAQ · License

Investor Skills is an open-source library for turning durable investing judgment into portable `SKILL.md` files. The repo collects how great investors think, filter opportunities, size risk, and act under uncertainty, then structures those patterns so humans can study them and AI agents can use them.

Questflow uses this repo as a public source of out-of-box skills for AI agents distilled from top investors.

## Why

Most investing content is passive: books, interviews, letters, podcasts, clips, and commentary.

The useful part is operational:

- What does this investor notice before others?
- What questions do they ask every time?
- What data do they trust?
- What do they ignore?
- What makes them act?
- What would their agent scan for every day?

Investor Skills exists to extract those decision patterns into software-shaped instructions.

## Installing

Install all skills:

```bash
npx skills add https://github.com/xuboyuebobb/investorskills
```

Install a single skill by install name:

```bash
npx skills add https://github.com/xuboyuebobb/investorskills --skill "value-investing"
```

You can also copy any `SKILL.md` into your project or paste it into ChatGPT, Codex, Cursor, Claude Code, or another agent conversation.

## Skills

Each skill does one job. The `Install name` column is the value passed to `--skill`.

| Skill folder | Install name | Description |
| --- | --- | --- |
| `value-investing` | `value-investing` | Buffett/Munger-style business-quality underwriting: durable moat, owner earnings, management quality, margin of safety, and downside-first risk review. |

## Which Skill Should I Use?

- Use `value-investing` when you want to underwrite a business, compare quality compounders, review a stock thesis, or decide what needs to be true before buying.
- Future skills will cover cycle positioning, macro reflexivity, special situations, growth investing, consumer observation, and risk-temperature scanning.

## Skill Format

Each investor skill should be practical, sourced, and executable.

```md
---
name: skill-install-name
description: Clear trigger rule for when an agent should use this skill.
---

# Skill Name

## Core Mental Model
The repeatable judgment pattern.

## When To Use
The market condition, asset type, or decision context.

## Inputs
Data, filings, prices, transcripts, KPIs, or observations needed.

## Process
Step-by-step reasoning workflow.

## Output
The artifact the agent should produce.

## Failure Modes
Where the model breaks, gets overused, or creates false confidence.

## Source Notes
Primary or credible secondary sources.
```

## Questflow Direction

Questflow is a decentralized agentic brokerage where users can trade and invest through AI agents distilled from top investors.

This repo supports Questflow in three ways:

- **Distribution**: investor mental models are useful public content on their own.
- **Product supply**: the best skills can become out-of-box Questflow agent skills.
- **Trust**: visible source notes make the skill library easier to inspect, debate, and improve.

Questflow's position: we are the brain, not the vault. Users keep custody with their broker or wallet. Questflow focuses on market reasoning, proactive scanning, and conversation-driven execution.

## Roadmap

- Add the first 10 investor mental model skills.
- Standardize tags by asset class, time horizon, signal type, and risk style.
- Add examples for daily scans and thesis reviews.
- Convert the strongest skills into Questflow-ready agent workflows.
- Build a public index for discovering skills by investor and investing style.

## Contributing

Contributions should make investing judgment more operational.

Prefer:

- repeatable decision frameworks
- concrete input signals
- clear failure modes
- primary or credible secondary sources
- examples that could become an AI-agent workflow

Avoid:

- generic biographies
- unsourced quotes
- motivational summaries
- vague investing advice
- hindsight-only trade stories

## FAQ

**Is this financial advice?**

No. These are research and reasoning skills. They are not recommendations to buy, sell, or hold securities.

**What is `SKILL.md`?**

A portable instruction file agents can load automatically or that users can paste directly into an AI coding/research environment.

**How is this different from investor quote collections?**

This repo extracts process: inputs, filters, decision rules, outputs, and failure modes.

**Why open source this?**

Because public mental-model content can attract investors, builders, and users while also creating a supply of Questflow-ready agent skills.

## License

MIT License.
