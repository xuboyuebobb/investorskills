---
name: darvas-box
description: "Use when evaluating Nicolas Darvas-style box breakouts, new-high momentum, volume confirmation, and mechanical stop placement for liquid growth stocks."
invest: ./invest.md
---

# Darvas Box

Use this skill to apply Nicolas Darvas-style box trading: find strong stocks making new highs, define the box, buy breakouts above the box, and place stops below the box.

## When To Use

Use this skill when the user asks for:

- Darvas Box analysis
- New-high momentum stocks
- Box breakout buy points
- Mechanical stop placement below a consolidation box
- Whether a growth stock is forming a tradable range

Trigger phrases include `Darvas`, `Darvas Box`, `box breakout`, `new highs`, `volume confirmation`, `stop below the box`, and `momentum growth stock`.

## Do Not Use When

- The stock is not liquid.
- The stock is not near highs or has no defined box.
- The user wants low-P/E value analysis.
- The general market is hostile to growth breakouts.

## Inputs Needed

- Ticker and market
- Recent daily/weekly OHLCV
- Box high, box low, number of tests, and breakout volume
- Market trend and sector strength
- Risk budget and current position if sizing is requested

## Process

1. Confirm the stock is liquid, strong, and near new highs.
2. Define the current box high and low.
3. Check that price has respected the box enough to make the range meaningful.
4. Treat a decisive move above box high on volume as the buy trigger.
5. Put the stop below the box or a clearly defined support level.
6. Move to a new box only after the stock advances and consolidates again.

## Output Format

```md
# Darvas Box View: [Stock]

## Verdict
Buy Breakout / Watch Box / Extended / Failed Box / Pass

## Box Definition
- Box high:
- Box low:
- Stop:

## Volume And Relative Strength

## Trade Plan

## Invalidation

## Missing Data
```

## Guardrails

- Do not buy inside a sloppy box unless the plan allows anticipation.
- Do not move the stop lower after entry.
- Do not average down.
- Do not treat old highs as valid if volume and trend are weak.
- Do not ignore market direction.

## Questflow Use

In Questflow, this skill is best used as a mechanical momentum module for detecting box setups, defining stops, and monitoring breakout failure.
