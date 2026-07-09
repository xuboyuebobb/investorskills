---
name: livermore
description: "Use when evaluating trend-following trades, pivotal-point breakouts, pyramiding, stop discipline, or whether a liquid market is acting right in a Jesse Livermore style."
invest: ./invest.md
---

# Livermore Breakout

Use this skill to apply Jesse Livermore-style trend following: wait for a clear line of least resistance, enter only near pivotal points, add only after the market confirms, and cut losses quickly.

## When To Use

Use this skill when the user asks for:

- A buyable breakout or pivotal-point read
- Trend-following trade planning
- Pyramiding rules for a winning position
- Stop placement and invalidation for a momentum trade
- A pass/fail judgment on whether price action is acting right

Trigger phrases include `Livermore`, `breakout`, `pivotal point`, `line of least resistance`, `pyramid`, `acting right`, and `cut losses`.

## Do Not Use When

- The asset is illiquid or cannot be exited cleanly.
- The user wants long-term business-quality underwriting.
- The market is rangebound and no clear trend or pivotal point exists.
- The user asks to average down into a losing trade.

## Inputs Needed

- Asset, ticker, or market
- Timeframe: daily, weekly, or intraday
- Recent OHLCV, breakout level, support level, and volume
- Current position size and average cost if already owned
- Account risk limit if sizing is requested

## Process

1. Decide whether the market has a clear line of least resistance.
2. Identify the pivotal point or breakout level.
3. Check volume, follow-through, and whether price holds the breakout.
4. Reject the trade if it is late, extended, choppy, or illiquid.
5. Define entry, stop, first add point, max add count, and invalidation.
6. Size from risk first, not from excitement.
7. If already in the trade, decide whether to hold, add, trim, or exit.

## Output Format

```md
# Livermore View: [Asset]

## Verdict
Enter / Wait / Hold / Add / Exit / Stand Down

## Line Of Least Resistance

## Pivotal Point

## Signal Check
| Signal | Status | Evidence | Weight |
|--------|--------|----------|--------|

## Trade Plan
- Entry:
- Initial stop:
- First add:
- Max size:

## Invalidation

## Missing Data
```

## Guardrails

- Do not average down.
- Do not anticipate a breakout before confirmation.
- Do not add unless the prior entry is profitable.
- Do not widen stops to avoid being wrong.
- Do not force a trade in a dull, trendless market.

## Questflow Use

In Questflow, this skill is best used as an execution-ready trend module: detect breakouts, propose risk-defined entries, monitor whether price is acting right, and enforce stop discipline across connected venues.
