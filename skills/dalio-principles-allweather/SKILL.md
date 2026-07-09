---
name: dalio-principles-allweather
description: "Use when evaluating portfolios through Ray Dalio-style economic machine, debt cycles, diversification, risk parity, and all-weather asset allocation."
invest: ./invest.md
---

# Dalio Principles All-Weather

Use this skill to apply Ray Dalio-style judgment.

## When To Use

Use this skill when the user asks for:

- all-weather portfolio design
- macro regime allocation
- risk parity review
- debt-cycle positioning

Trigger phrases include `Dalio`, `All Weather`, `risk parity`, `economic machine`, `debt cycle`, `diversify`.

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

1. Map growth and inflation regime.
2. Identify debt-cycle stage and policy constraints.
3. Allocate by risk contribution across equities, bonds, commodities, gold, cash.
4. Rebalance when regime or risk contributions drift.

## Output Format

```md
# Dalio Principles All-Weather View: [Subject]

## Verdict
Overweight / Underweight / Hedge / Neutral / Rebalance

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
