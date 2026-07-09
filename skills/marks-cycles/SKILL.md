---
name: marks-cycles
description: "Use when evaluating markets through Howard Marks-style second-level thinking, credit cycles, risk premiums, market psychology, and defensive versus aggressive posture."
invest: ./invest.md
---

# Howard Marks Cycles

Use this skill to apply Howard Marks-style cycle and risk judgment: identify where markets are in the cycle, compare price to value and risk premium, and decide whether to be defensive or aggressive.

## When To Use

Use this skill when the user asks for:

- Market cycle diagnosis
- Credit spread and risk premium review
- Second-level thinking on a crowded view
- Defensive or aggressive portfolio posture
- Whether risk is being rewarded or ignored

Trigger phrases include `Howard Marks`, `cycle`, `second-level thinking`, `risk premium`, `credit cycle`, `defensive`, `aggressive`, and `market psychology`.

## Do Not Use When

- The user needs a precise technical entry only.
- There is no market, valuation, credit, or sentiment context.
- The user asks for a prediction without uncertainty ranges.
- The setup requires leverage or forced timing.

## Inputs Needed

- Asset class or market
- Valuation, yield, spread, or risk premium data
- Credit conditions, liquidity, default risk, and refinancing risk if relevant
- Sentiment, positioning, and consensus view
- Portfolio exposure and drawdown tolerance if posture is requested

## Process

1. Identify the cycle: early, mid, late, stressed, panic, recovery.
2. Separate first-level view from second-level view.
3. Compare price, value, and risk premium.
4. Assess market psychology: fear, greed, complacency, forced selling.
5. Decide posture: defensive, neutral, opportunistic, or aggressive.
6. Size by margin for error, not confidence alone.

## Output Format

```md
# Marks Cycle View: [Market]

## Verdict
Defensive / Neutral / Opportunistic / Aggressive / Stand Down

## Cycle Position

## First-Level vs Second-Level View

## Risk Premium

## Market Psychology

## Portfolio Posture

## What Would Change The View

## Missing Data
```

## Guardrails

- Do not forecast with false precision.
- Do not treat high returns as low risk.
- Do not become aggressive when risk is underpriced.
- Do not become paralyzed during panic if compensation is attractive.
- Always ask what is already in the price.

## Questflow Use

In Questflow, this skill is best used as a portfolio posture and cycle-risk module across Funds, asset classes, and market regimes.
