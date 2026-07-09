---
name: minervini-vcp
description: "Use when evaluating Mark Minervini-style VCP setups: volatility contraction, tight price action, moving-average alignment, relative strength, breakout trigger, and structural stop placement."
invest: ./invest.md
---

# Minervini VCP

Use this skill to apply Mark Minervini-style Volatility Contraction Pattern analysis: find leading stocks in uptrends, wait for volatility to contract through successive pullbacks, buy the breakout through a pivot, and cut quickly if the setup fails.

## When To Use

Use this skill when the user asks for:

- VCP pattern review
- Platform/base breakout analysis
- Tightness and volatility contraction checks
- Moving-average and relative-strength alignment
- Entry, stop, and add plan for a growth leader

Trigger phrases include `Minervini`, `VCP`, `volatility contraction`, `tightness`, `platform`, `pivot`, `SEPA`, `stage 2`, and `breakout`.

## Do Not Use When

- The stock is below key moving averages or in a downtrend.
- The base is wide, loose, and volatile.
- The breakout is far extended from the pivot.
- The user wants long-term value analysis only.

## Inputs Needed

- Ticker, timeframe, and recent OHLCV
- Moving averages: 50-day, 150-day, 200-day if available
- Relative strength versus market and industry
- VCP contractions, pivot, volume dry-up, and breakout volume
- Earnings/sales growth if available
- Risk budget if sizing is requested

## Process

1. Confirm stage-2 uptrend and moving-average alignment.
2. Check relative strength and leadership.
3. Identify contraction sequence: each pullback should get smaller and tighter.
4. Confirm volume dries up near the pivot.
5. Define pivot, entry, stop, first add, and invalidation.
6. Reject loose, extended, or lagging setups.

## Output Format

```md
# Minervini VCP View: [Stock]

## Verdict
Buyable Breakout / Watch Pivot / Too Loose / Extended / Failed / Pass

## Trend Template

## VCP Structure

## Pivot And Stop

## Volume And Relative Strength

## Trade Plan

## Missing Data
```

## Guardrails

- Do not buy loose VCPs.
- Do not buy below declining key moving averages.
- Do not chase far above the pivot.
- Do not widen stops after entry.
- Do not average down.

## Questflow Use

In Questflow, this skill is best used as a technical breakout module for detecting VCP/platform setups, defining stop levels, and monitoring breakout follow-through.
