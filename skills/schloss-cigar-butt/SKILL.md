---
name: schloss-cigar-butt
description: "Use when evaluating Walter Schloss-style cigar-butt value: cheap stocks, balance sheets, diversification across many bargains, and avoiding glamorous stories."
invest: ./invest.md
---

# Schloss Cigar-Butt Value

Use this skill to apply Walter Schloss-style judgment.

## When To Use

Use this skill when the user asks for:

- cigar-butt portfolio
- cheap stock basket
- balance-sheet value screen
- Schloss-style deep value

Trigger phrases include `Schloss`, `cigar butt`, `cheap stock basket`, `book value discount`, `deep value diversification`.

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

1. Screen for cheap asset-based value.
2. Check debt and asset quality.
3. Build a diversified basket.
4. Sell when no longer cheap or assets impair.

## Output Format

```md
# Schloss Cigar-Butt Value View: [Subject]

## Verdict
Buy Basket / Add / Hold / Asset Impaired / Pass

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
