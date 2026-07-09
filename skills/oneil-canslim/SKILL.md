---
name: oneil-canslim
description: "Use when evaluating growth stocks through O'Neil CAN SLIM: earnings acceleration, relative strength, institutional demand, market direction, base quality, and breakout discipline."
invest: ./invest.md
---

# O'Neil CAN SLIM

Use this skill to apply William O'Neil-style growth stock selection: find companies with accelerating earnings and sales, strong relative strength, constructive bases, institutional sponsorship, and a favorable general market.

## When To Use

Use this skill when the user asks for:

- CAN SLIM analysis
- Growth stock screening
- Relative strength and earnings acceleration checks
- Cup-with-handle, flat base, or base breakout review
- A 7-8% stop-loss plan for a growth stock trade

Trigger phrases include `CAN SLIM`, `O'Neil`, `relative strength`, `base breakout`, `cup with handle`, `IBD`, `earnings acceleration`, and `7% stop`.

## Do Not Use When

- The company has weak or decelerating fundamentals.
- The market is in a confirmed downtrend.
- The stock is thinly traded or extended far above a proper buy point.
- The user wants deep value or long-term moat analysis only.

## Inputs Needed

- Ticker and exchange
- Quarterly EPS and sales growth
- Annual EPS trend
- Relative strength vs. market and peers
- Base pattern, pivot price, volume, and current price
- General market trend

## Process

1. Check CAN SLIM fundamentals first: current and annual earnings, sales, new product/catalyst.
2. Confirm leadership: relative strength, industry group strength, and price near new highs.
3. Evaluate supply and demand: float, volume dry-up, accumulation, institutional sponsorship.
4. Confirm market direction.
5. Judge base quality and pivot validity.
6. Define buy point, stop, add rules, and sell rules.

## Output Format

```md
# CAN SLIM View: [Stock]

## Verdict
Buy Point / Watchlist / Extended / Pass / Market Stand Down

## CAN SLIM Checklist
| Letter | Status | Evidence |
|--------|--------|----------|

## Base And Pivot

## Buy / Stop Plan

## Sell Rules

## Missing Data
```

## Guardrails

- Do not buy cheap-looking laggards.
- Do not buy extended breakouts.
- Do not ignore the general market trend.
- Cut losses quickly, usually around 7-8% from the proper buy point.
- Do not average down.

## Questflow Use

In Questflow, this skill is best used as a growth-stock opportunity scanner and breakout monitor that connects fundamentals, relative strength, price/volume, and execution rules.
