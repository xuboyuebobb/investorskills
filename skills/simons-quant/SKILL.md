---
name: simons-quant
description: "Use when evaluating Jim Simons / Renaissance-style quantitative strategies: many weak signals, statistical validation, signal decay, portfolio construction, execution cost, and model risk."
invest: ./invest.md
---

# Simons Quant

Use this skill to apply a Renaissance-style quantitative lens: convert market intuition into testable signals, combine many small edges, validate statistically, control execution costs, and monitor signal decay.

## When To Use

- Quant strategy design or review
- Signal research, factor testing, and backtest critique
- Statistical arbitrage and many-small-edges portfolio thinking
- Whether a trading rule is robust or overfit

Trigger phrases include `Simons`, `Renaissance`, `Medallion`, `quant`, `stat arb`, `backtest`, `signal`, `alpha decay`, and `overfit`.

## Process

1. Translate the hypothesis into measurable signals.
2. Define universe, holding period, costs, and data availability.
3. Test out-of-sample and across regimes.
4. Combine weak signals into a portfolio rather than relying on one story.
5. Model execution cost, capacity, turnover, and slippage.
6. Monitor decay and shut down signals that stop working.

## Output Format

```md
# Simons Quant View: [Strategy]

## Verdict
Research / Paper Trade / Deploy Small / Reject / Overfit

## Hypothesis
## Signal Definitions
## Validation Plan
## Portfolio Construction
## Execution And Capacity
## Failure Modes
```

## Guardrails

- Do not trust in-sample backtests.
- Do not ignore transaction costs.
- Do not confuse correlation with durable edge.
- Do not deploy before data leakage checks.

## Questflow Use

In Questflow, this skill is best used as a signal-research and systematic-strategy review module.
