---
name: buffett
description: "Use when evaluating a business through Buffett-style ownership, owner earnings, durable moat, management quality, capital allocation, and margin-of-safety judgment."
invest: ./invest.md
---

# Buffett Value Compounder

Use this skill to apply Buffett-style business ownership analysis: buy understandable, durable businesses with strong economics and honest managers at prices below conservative intrinsic value.

## When To Use

Use this skill when the user asks for:

- Long-term business-quality underwriting
- Moat and owner earnings analysis
- Intrinsic value and margin-of-safety review
- Whether a stock is a durable compounder
- A holding review for a long-term equity position

Trigger phrases include `Buffett`, `owner earnings`, `moat`, `margin of safety`, `intrinsic value`, `quality business`, and `compounder`.

## Do Not Use When

- The user wants short-term breakout timing.
- The business is outside the circle of competence.
- Primary filings or enough operating history are missing.
- The thesis depends mostly on macro timing, technicals, or leverage.

## Inputs Needed

- Company, ticker, and business description
- 10-K/10-Q data, owner earnings or free cash flow, ROIC, margins, debt
- Management and capital allocation history
- Current price, shares outstanding, net cash/debt
- Conservative valuation assumptions

## Process

1. Decide whether the business is understandable.
2. Evaluate moat, durability, returns on capital, pricing power, and reinvestment runway.
3. Review management integrity and capital allocation.
4. Estimate conservative intrinsic value as a range.
5. Demand a margin of safety before a buy verdict.
6. Define thesis invalidation and monitoring metrics.

## Output Format

```md
# Buffett View: [Company]

## Verdict
Buy / Watchlist / Pass / Too Hard

## One-Line Thesis

## Business Quality

## Management And Capital Allocation

## Intrinsic Value Range

## Margin Of Safety

## Main Risks

## Invalidation Triggers

## Missing Data
```

## Guardrails

- Do not confuse cheap multiples with value.
- Do not use optimistic assumptions to force a buy.
- Do not ignore leverage, dilution, or bad incentives.
- Do not sell only because price declined if the thesis is intact.
- Say `Too Hard` when the business cannot be understood.

## Questflow Use

In Questflow, this skill is best used as a long-term equity underwriting module for Fund strategies, watchlists, and holding reviews.
