---
name: watsa-insurance-float
description: "Use when evaluating Prem Watsa / Fairfax-style value investing: insurance float, contrarian allocation, special situations, and conservative downside-focused capital allocation."
invest: ./invest.md
---

# Watsa Insurance Float Value

Use this skill to apply Prem Watsa-style judgment.

## When To Use

Use this skill when the user asks for:

- insurance float analysis
- Fairfax-style capital allocation
- contrarian value with insurance engine
- float-driven compounding

Trigger phrases include `Watsa`, `Fairfax`, `insurance float`, `contrarian value`, `float compounding`.

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

1. Assess insurance underwriting and float quality.
2. Map capital allocation opportunities across equities, credit, special situations.
3. Demand margin of safety and downside protection.
4. Measure progress by book/intrinsic value compounding.

## Output Format

```md
# Watsa Insurance Float Value View: [Subject]

## Verdict
Own / Add On Fear / Hedge / Float Impaired / Pass

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
