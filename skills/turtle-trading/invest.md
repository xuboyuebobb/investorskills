---
version: alpha
name: Turtle Trading
slug: turtle-trading
aliases:
  - Richard Dennis Turtle System
  - Donchian Breakout System
description: "Rule-based breakout trend following, Donchian channels, ATR/N-unit sizing, pyramiding, stops, and portfolio heat"
investor: Richard Dennis / Turtle Traders
style: systematic+trend-following+breakout
timeHorizon: weeks-months
decisionCadence: daily
assetClasses:
  - futures
  - fx
  - commodities
  - public equities
  - crypto
circleOfCompetence:
  - rule-based breakouts
  - Donchian channels
  - ATR sizing
  - portfolio heat control
universe:
  geographies:
    - global liquid markets
  instruments:
    - futures
    - currencies
    - commodities
    - liquid ETFs
    - liquid crypto
  liquidity: high
  dataRequirements:
    - OHLCV
    - ATR or volatility
    - correlation groups
marketRegime:
  preferred: markets capable of sustained breakouts
  avoid: excessive transaction costs, illiquidity, no volatility data
  posture: fully rule-based
signals:
  system:
    donchianBreakout:
      weight: high
      frequency: daily
      source: N-day high/low
      description: Entry signal based on breakout of prior range.
    atrUnit:
      weight: high
      frequency: daily
      source: ATR/N calculation
      description: Position size and add levels are volatility-based.
    portfolioHeat:
      weight: high
      frequency: daily
      source: open risk by market group
      description: Total correlated risk must be capped.
    systematicExit:
      weight: high
      frequency: daily
      source: shorter-channel exit or stop
      description: Exit by rule, not opinion.
filters:
  breakoutSignal: required
  atrAvailable: required
  heatLimitAvailable: required
  stopDefined: required
  discretionaryOverride: disqualifier
  illiquidMarket: disqualifier
sizing:
  maxPosition: unit-based
  maxPortfolio: heat-limited across correlated markets
  convictionThreshold: system signal only
  scalingRule: add units at defined favorable price intervals
  riskPerTrade: one volatility unit or defined fraction of equity
risk:
  stopLoss: mechanical
  maxDrawdown: system-level drawdown budget
  correlationLimit: heat limits by sector/market group
  leverage: system-defined
  positionCutRule: exit by channel/stop rule
metrics:
  openHeat:
    frequency: daily
    alert: heat limit exceeded
  breakoutStatus:
    frequency: daily
    alert: signal reverses
  atr:
    frequency: daily
    alert: volatility changes position size materially
playbooks:
  turtleMemo:
    verdictOptions: Enter / Add / Hold / Exit / No Signal
    requiredSections: breakout,n,unit,stop,adds,heat,exit
sources:
  - Turtle Trading rules attributed to Richard Dennis and William Eckhardt
  - Curtis Faith, Way of the Turtle
  - Public Turtle Trading rule summaries
---

# Turtle Trading

The Turtle lens is deliberately mechanical. A trader does not need to predict; they need to follow a tested breakout system, size by volatility, add by rule, and respect portfolio heat.

## Philosophy

Trading can be taught if the rules are explicit and the trader follows them. The edge comes from systematic execution across markets, not discretionary genius.

## Universe & Regime

- **Asset classes**: Futures, FX, commodities, liquid equities/ETFs, liquid crypto.
- **Universe**: High-liquidity markets with reliable volatility data.
- **Preferred regime**: Sustained trends and breakouts.
- **Avoid**: Illiquidity, high costs, inability to calculate risk.
- **Posture**: Fully rule-based.

## Signals

- **Donchian Breakout** (high): Entry on breakout of prior N-day high/low.
- **ATR/N Unit** (high): Size and add levels based on volatility.
- **Portfolio Heat** (high): Total risk across correlated markets.
- **Systematic Exit** (high): Exit by rule.

## Filters

- **Breakout Signal** (required): No signal, no trade.
- **ATR Available** (required): Need N-unit risk.
- **Heat Limit Available** (required): Portfolio-level risk cap.
- **Stop Defined** (required): No stop, no trade.
- **Discretionary Override** (disqualifier): Reject.
- **Illiquid Market** (disqualifier): Reject.

## Analysis

### 1. Define System Variant

Lookback length, breakout trigger, exit channel, and market universe.

### 2. Calculate N

Use ATR/volatility to define unit size, stop distance, and add levels.

### 3. Check Heat

Confirm total portfolio and market-group exposure remains within limits.

### 4. Execute Rules

Enter, add, hold, or exit by system.

## Position Sizing

- **Initial size**: One unit by N/ATR risk.
- **Add rule**: Add units only at pre-defined favorable intervals.
- **Max size**: Per-market and portfolio heat limits.
- **Cash rule**: No signal means no position.

## Risk Management

- **Primary risk**: Rule-breaking and correlated heat.
- **Stop**: Mechanical.
- **Correlation**: Market-group heat limits.
- **Leverage**: System-defined.

## Execution

### Entry Rules

1. Breakout signal fires.
2. N unit calculated.
3. Stop defined.
4. Heat limit permits trade.

### Exit Rules

1. Exit channel breaks.
2. Stop is hit.
3. Heat rules force reduction.
4. Market removed from system universe.

## Monitoring

- **Cadence**: Daily.
- **Metrics**: Breakout, N, unit size, stop, adds, heat, exit channel.
- **Alerts**: Heat breach, volatility spike, exit signal.

## Playbooks

### Turtle Memo

Return `Enter`, `Add`, `Hold`, `Exit`, or `No Signal` with breakout, N, unit size, stop, add levels, heat, and exit rule.

## Canonical Cases

- **The Turtle experiment, 1980s**: Richard Dennis and William Eckhardt trained novices to follow explicit trend rules, proving process and discipline could be taught.
- **Long commodity/currency/bond trends**: Turtle-style systems historically made money by catching persistent multi-month moves across diversified futures.
- **Whipsaw regimes**: The necessary negative case: many small losses are tolerated to capture the occasional large trend.

Study these cases for rule design, not discretionary chart reading.

## Do's and Don'ts

- Do follow rules exactly.
- Do size by N.
- Do limit heat.
- Don't override signals.
- Don't average down.
- Don't exceed correlated exposure limits.

## Source Notes

This model is distilled from public Turtle Trading rule summaries and books about the Turtle experiment. Specific historical trading records vary by trader.
