---
name: hohn-concentrated-quality
description: "Use when evaluating Chris Hohn / TCI-style concentrated quality investing: exceptional businesses, pricing power, high returns on capital, engagement, and long-duration concentrated ownership."
invest: ./invest.md
---

# Hohn Concentrated Quality

Use this skill to apply Chris Hohn-style judgment.

## When To Use

Use this skill when the user asks for:

- concentrated quality portfolio
- pricing-power compounder
- TCI-style engagement
- high-ROIC long

Trigger phrases include `Hohn`, `TCI`, `concentrated quality`, `pricing power`, `high ROIC`, `engagement`.

## Do Not Use When

- The setup is outside this model's universe and another investor skill fits better.
- Critical data is missing and the model requires it.
- The user wants guaranteed returns or unbounded leverage.
- The request is only generic market chatter with no decision.

## Inputs Needed

- Asset, portfolio, theme, or market context
- Relevant financial, market, regime, or structural data
- Time horizon and risk constraints
- Current price/valuation or portfolio weights if sizing is requested

## Process

1. Score business quality and pricing power.
2. Estimate long-term ROIC and runway.
3. Check valuation versus multi-year compounding.
4. Use engagement if governance or capital allocation can improve value.

## Output Format

```md
# Hohn Concentrated Quality View: [Subject]

## Verdict
Concentrated Own / Engage / Watch / Quality Broken / Pass

## Setup / Thesis

## Evidence

## Risks

## Action Plan

## Invalidation

## Missing Data
```

## Guardrails

- Do not force a trade when filters fail.
- Do not ignore risk, liquidity, or regime constraints.
- Do not mix this model with another unless comparison is requested.
- Separate facts, assumptions, and judgment.

## Questflow Use

In Questflow, this skill is best used as a judgment module for Funds, research workflows, monitoring, and risk-aware decision support.
