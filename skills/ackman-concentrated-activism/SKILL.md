---
name: ackman-concentrated-activism
description: "Use when evaluating Bill Ackman-style concentrated long theses, activist campaigns, high-conviction multiyear bets, and public narrative plus fundamental catalysts."
invest: ./invest.md
---

# Ackman Concentrated Activism

Use this skill to apply Bill Ackman-style judgment.

## When To Use

Use this skill when the user asks for:

- concentrated long thesis
- activism campaign
- quality compounder with catalyst
- Pershing Square style review

Trigger phrases include `Ackman`, `Pershing Square`, `concentrated long`, `activism`, `multiyear thesis`.

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

1. Underwrite long-term business quality.
2. Estimate intrinsic value and value gap.
3. Define catalyst: activism, ops, capital allocation, re-rating.
4. Size only when research depth supports concentration.

## Output Format

```md
# Ackman Concentrated Activism View: [Subject]

## Verdict
Concentrated Long / Activist Long / Watch / Needs Catalyst / Pass

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
