---
version: alpha
name: Simons Quant
slug: simons-quant
aliases:
  - Renaissance Quant
  - Medallion-Style Signal Research
description: "Statistical signal research, many weak edges, rigorous validation, portfolio construction, execution cost, and signal decay"
investor: Jim Simons / Renaissance Technologies
style: quant+stat-arb+systematic
timeHorizon: intraday-weeks
decisionCadence: daily
assetClasses:
  - public equities
  - futures
  - fx
  - multi-asset
circleOfCompetence:
  - signal research
  - statistical arbitrage
  - systematic trading
  - execution cost modeling
universe:
  geographies:
    - global liquid markets
  instruments:
    - stocks
    - futures
    - currencies
    - liquid derivatives
  liquidity: high
  dataRequirements:
    - clean historical data
    - survivorship-bias-free universe
    - transaction cost estimates
marketRegime:
  preferred: many liquid instruments with stable data and exploitable statistical structure
  avoid: sparse data, unmodeled regime breaks, high cost, low capacity
  posture: scientific, diversified, adaptive
signals:
  research:
    signalRobustness:
      weight: high
      frequency: research-cycle
      source: out-of-sample tests
      description: A signal must survive validation beyond the training sample.
    weakSignalEnsemble:
      weight: high
      frequency: research-cycle
      source: model portfolio
      description: Edge comes from combining many small signals.
    costAdjustedAlpha:
      weight: high
      frequency: daily
      source: slippage and fee model
      description: Alpha must survive real trading costs.
    decayMonitoring:
      weight: high
      frequency: daily
      source: live performance attribution
      description: Signals decay and must be retired or downweighted.
filters:
  cleanData: required
  outOfSampleValidation: required
  costAdjustedPositive: required
  leakageChecked: required
  singleStorySignal: disqualifier
  capacityTooSmall: disqualifier
sizing:
  maxPosition: model-risk adjusted
  maxPortfolio: diversified across many weak signals
  convictionThreshold: statistical confidence, not narrative confidence
  scalingRule: scale after live validation and capacity analysis
  riskPerTrade: portfolio optimizer based
risk:
  stopLoss: model-and-portfolio-risk based
  maxDrawdown: strategy-level drawdown budget
  correlationLimit: enforce factor and signal correlation limits
  leverage: model-dependent with strict risk controls
  positionCutRule: reduce when signal decays or live performance diverges from expected distribution
metrics:
  liveAlpha:
    frequency: daily
    alert: realized alpha below expected range
  executionCost:
    frequency: daily
    alert: costs consume alpha
  signalDecay:
    frequency: weekly
    alert: signal weakens out of sample
playbooks:
  quantReview:
    verdictOptions: Research / Paper Trade / Deploy Small / Reject / Overfit
    requiredSections: hypothesis,data,signals,validation,costs,portfolio,risk,decay
sources:
  - Gregory Zuckerman, The Man Who Solved the Market
  - Public Renaissance Technologies and Jim Simons interviews
---

# Simons Quant

The Simons lens replaces story-driven conviction with scientific process. Build signals, test them rigorously, combine many small edges, control costs, and adapt when markets change.

## Philosophy

One signal is fragile. Many weak signals, properly validated and combined, can become a durable portfolio edge.

The enemy is overfitting: a beautiful backtest that cannot survive live trading.

## Universe & Regime

- **Asset classes**: Liquid equities, futures, FX, multi-asset.
- **Universe**: Markets with clean data, enough history, and manageable costs.
- **Preferred regime**: High-liquidity markets with repeatable statistical structure.
- **Avoid**: Sparse data, leakage, excessive costs, low capacity.
- **Posture**: Scientific and adaptive.

## Signals

- **Signal Robustness** (high): Does it work out of sample and across regimes?
- **Weak Signal Ensemble** (high): Does it improve the portfolio when combined with other signals?
- **Cost-Adjusted Alpha** (high): Does alpha survive fees, spread, slippage, and market impact?
- **Decay Monitoring** (high): Is live performance still within expected distribution?

## Filters

- **Clean Data** (required): Bad data creates fake edge.
- **Out-Of-Sample Validation** (required): In-sample is not enough.
- **Cost-Adjusted Positive** (required): Gross alpha is irrelevant if costs eat it.
- **Leakage Checked** (required): No future data, survivorship, or selection bias.
- **Single Story Signal** (disqualifier): One intuitive story is not a quant portfolio.
- **Capacity Too Small** (disqualifier): Cannot deploy meaningfully.

## Analysis

### 1. Define Hypothesis And Data

State the measurable signal, universe, holding period, and data source.

### 2. Validate

Use train/test, walk-forward, regime splits, and robustness checks.

### 3. Portfolio Construction

Combine signals with correlation, risk, turnover, and capacity constraints.

### 4. Live Monitoring

Track decay, attribution, costs, and regime change.

## Position Sizing

- **Initial size**: Paper trade or small deployment after validation.
- **Add rule**: Scale only after live performance and cost assumptions hold.
- **Max size**: Capacity and market-impact constrained.
- **Cash rule**: No deployment when validation is incomplete.

## Risk Management

- **Primary risk**: Overfitting and live decay.
- **Stop**: Strategy-level, not discretionary single-trade emotion.
- **Correlation**: Enforce signal and factor correlation limits.
- **Leverage**: Only with validated risk model.

## Execution

### Entry Rules

1. Data is clean.
2. Signal is validated out of sample.
3. Costs are modeled.
4. Portfolio improves after correlation checks.

### Exit Rules

1. Signal decays.
2. Costs consume alpha.
3. Regime invalidates assumptions.
4. Live drawdown exceeds expected range.

## Monitoring

- **Cadence**: Daily live performance, weekly research review.
- **Metrics**: Alpha, Sharpe, drawdown, turnover, slippage, capacity, decay.
- **Alerts**: Leakage discovery, cost spike, out-of-distribution performance.

## Playbooks

### Quant Review

Return `Research`, `Paper Trade`, `Deploy Small`, `Reject`, or `Overfit` with hypothesis, data, validation, costs, portfolio construction, risk, and decay.

## Canonical Cases

- **Medallion Fund multi-decade record**: The canonical example of many small, short-horizon statistical edges compounded with extreme discipline and infrastructure.
- **Renaissance scientific hiring model**: Mathematicians, scientists, and engineers built a research culture around data and testing rather than Wall Street storytelling.
- **Signal decay adaptation**: Renaissance's edge is not one permanent formula; it is the process for finding, combining, and retiring signals.

Study these cases for process design, not copyable public signals.

## Do's and Don'ts

- Do obsess over data quality.
- Do test out of sample.
- Do model costs and capacity.
- Don't trust a perfect backtest.
- Don't deploy story-driven signals as quant.
- Don't ignore decay.

## Source Notes

This model is distilled from public reporting on Jim Simons and Renaissance, especially `The Man Who Solved the Market`. Actual Medallion signals are proprietary.
