---
name: turtle-trading
description: "Use when evaluating Richard Dennis / Turtle Trading-style breakout systems: Donchian channels, ATR/N-unit sizing, pyramiding, portfolio heat, and fully rule-based trend following."
invest: ./invest.md
---

# Turtle Trading

Use this skill to apply Turtle-style systematic breakout trading: buy/sell breakouts, size by ATR, add by N units, control portfolio heat, and follow rules without discretion.

## When To Use

- Donchian breakout strategy review
- ATR/N-unit position sizing
- Rule-based futures, FX, crypto, or stock trend system
- Portfolio heat and pyramiding plan

Trigger phrases include `Turtles`, `Richard Dennis`, `Donchian`, `ATR`, `N unit`, `20-day breakout`, `55-day breakout`, and `systematic breakout`.

## Process

1. Define breakout system and lookback.
2. Calculate ATR/N risk unit.
3. Define initial stop and add levels.
4. Limit portfolio heat and correlated markets.
5. Exit by system rule, not opinion.

## Output Format

```md
# Turtle View: [Market / System]

## Verdict
Enter / Add / Hold / Exit / No Signal

## Breakout Rule
## N / ATR
## Unit Size
## Stop
## Portfolio Heat
```

## Guardrails

- Do not use discretionary excuses to skip rules.
- Do not exceed heat limits.
- Do not average down.

## Questflow Use

In Questflow, this skill is best used as a rule-based trend-following execution template.
