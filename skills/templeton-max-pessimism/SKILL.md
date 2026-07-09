---
name: templeton-max-pessimism
description: "Use when evaluating John Templeton-style global contrarian value: buy at points of maximum pessimism, search worldwide, and demand a large discount to long-term value."
invest: ./invest.md
---

# Templeton Max Pessimism

Use this skill to apply John Templeton-style judgment.

## When To Use

Use this skill when the user asks for:

- maximum pessimism
- country/sector crisis value
- global contrarian opportunity
- Templeton-style recovery trade

Trigger phrases include `Templeton`, `maximum pessimism`, `global value`, `crisis buying`, `contrarian recovery`.

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

1. Identify where pessimism is extreme.
2. Estimate normalized long-term value.
3. Check survival and policy/capital constraints.
4. Scale in as fear peaks and facts stabilize.

## Output Format

```md
# Templeton Max Pessimism View: [Subject]

## Verdict
Buy Pessimism / Scale In / Watch / Trap / Pass

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
