---
name: graham-net-net
description: "Use when evaluating Benjamin Graham-style deep value: net-nets, working capital bargains, margin of safety, statistical cheapness, and balance-sheet protection."
invest: ./invest.md
---

# Graham Net-Net Value

Use this skill to apply Benjamin Graham-style judgment.

## When To Use

Use this skill when the user asks for:

- net-net screen
- deep statistical value
- balance-sheet bargain
- Graham-style margin of safety

Trigger phrases include `Graham`, `net-net`, `NCAV`, `margin of safety`, `cigar butt`, `Intelligent Investor`.

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

1. Calculate NCAV / tangible asset value.
2. Haircut dubious assets and check liabilities.
3. Prefer a basket of discounts rather than one story stock.
4. Exit when price converges to value or assets impair.

## Output Format

```md
# Graham Net-Net Value View: [Subject]

## Verdict
Buy Basket / Buy Single / Watch / Asset Trap / Pass

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
