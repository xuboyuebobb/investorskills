---
name: libei-macro-hedge
description: "Use when evaluating markets through Li Bei's macro hedge lens: regime identification, trend + contrarian timing, position management by conviction, and risk control for drawdown."
invest: ./invest.md
---

# Li Bei Macro Hedge

Use this skill to apply Li Bei / 李蓓-style judgment.

## When To Use

Use this skill when the user asks for:

- macro hedge A-share analysis
- regime identification for Chinese markets
- Li Bei-style macro timing
- position management by conviction

Trigger phrases include `李蓓`, `Li Bei`, `半夏投资`, `macro hedge A股`, `regime identification`, `conviction sizing`.

## Do Not Use When

- Another skill fits better.
- Critical data for this model is missing.
- The user wants guaranteed returns or unbounded leverage.
- The request is generic chatter with no decision.

## Inputs Needed

- Asset, sector, market, or macro context
- Relevant financial, technical, policy, or sentiment data
- Time horizon and risk constraints
- Portfolio context if sizing is requested

## Process

1. Identify the macro regime (growth, inflation, policy, liquidity).
2. Check if price/trend confirms the macro view.
3. Size by conviction: large when clear, small when uncertain.
4. Cut aggressively when the macro thesis is wrong.

## Output Format

```md
# Li Bei Macro Hedge View: [Subject]

## Verdict
High Conviction / Probe / Reduce / Hedge / Stand Aside

## Thesis

## Evidence

## Risks

## Action Plan

## Invalidation

## Missing Data
```

## Guardrails

- Follow the skill process; do not free-style.
- Separate facts, assumptions, and judgment.
- Define invalidation before sizing.
- Not financial advice.

## Questflow Use

Use as a judgment module inside Questflow-style agent workflows. Reference readings/podcasts/videos after loading the skill.
