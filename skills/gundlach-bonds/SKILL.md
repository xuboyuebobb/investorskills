---
name: gundlach-bonds
description: "Use when evaluating bond, credit, duration, yield-curve, and fixed-income relative-value setups in a Jeffrey Gundlach style."
invest: ./invest.md
---

# Gundlach Bonds

Use this skill to apply Jeffrey Gundlach-style judgment.

## When To Use

Use this skill when the user asks for:

- bond allocation
- duration and curve trades
- credit vs rates decision
- fixed-income risk review

Trigger phrases include `Gundlach`, `DoubleLine`, `duration`, `yield curve`, `credit spreads`, `bonds`, `fixed income`.

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

1. Define rates regime and inflation path.
2. Map duration, curve, and credit exposures.
3. Compare yield to risk: duration, default, liquidity, convexity.
4. Choose instruments with best compensation, not highest headline yield.

## Output Format

```md
# Gundlach Bonds View: [Subject]

## Verdict
Long Duration / Short Duration / Overweight Credit / Underweight Credit / Neutral / Hedge

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
