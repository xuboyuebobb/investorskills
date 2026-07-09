---
version: alpha
name: Seykota Systematic Trend
slug: seykota-systematic-trend
aliases:
  - Ed Seykota
  - Systematic Trend Following
description: "Mechanical trend-following rules, volatility sizing, small losses, riding winners, whipsaw tolerance, and emotional discipline"
investor: Ed Seykota
style: systematic+trend-following+futures
timeHorizon: weeks-months
decisionCadence: daily
assetClasses:
  - futures
  - fx
  - commodities
  - crypto
  - multi-asset
circleOfCompetence:
  - systematic trend following
  - mechanical rules
  - volatility sizing
  - behavioral discipline
universe:
  geographies:
    - global liquid markets
  instruments:
    - futures
    - currencies
    - commodities
    - liquid crypto
  liquidity: high
  dataRequirements:
    - OHLCV
    - volatility
    - backtest data
marketRegime:
  preferred: persistent trends across diversified markets
  avoid: high-cost chop if system has no edge
  posture: mechanical, rules-first
signals:
  system:
    trendSignal:
      weight: high
      direction: trend-up
      frequency: daily
      source: mechanical trend rule
      description: Entry and exit should be rule-defined.
    volatilityUnit:
      weight: high
      frequency: daily
      source: ATR or volatility estimate
      description: Size by risk, not conviction.
    systemAdherence:
      weight: high
      frequency: daily
      source: trading log
      description: Discipline is part of the system.
    whipsawTolerance:
      weight: medium
      frequency: monthly
      source: performance review
      description: Small losses are the cost of catching large trends.
filters:
  rulesDefined: required
  volatilitySizing: required
  stopDefined: required
  portfolioHeatControlled: required
  discretionaryOverride: disqualifier
  noBacktest: disqualifier
sizing:
  maxPosition: volatility-adjusted
  maxPortfolio: diversified across markets
  convictionThreshold: system signal, not opinion
  scalingRule: pyramid only by rule
  riskPerTrade: fixed fraction of equity or volatility unit
risk:
  stopLoss: mechanical
  maxDrawdown: system-level drawdown budget
  correlationLimit: portfolio heat limits by market group
  leverage: system-defined
  positionCutRule: exit by rule, not narrative
metrics:
  systemAdherence:
    frequency: daily
    alert: discretionary override attempted
  drawdown:
    frequency: daily
    alert: exceeds expected band
  trendCapture:
    frequency: monthly
    alert: winners cut too early
playbooks:
  systematicTrendMemo:
    verdictOptions: Follow System / Reduce Risk / Stop Out / No System Edge
    requiredSections: rules,signal,sizing,heat,drawdown,discipline
sources:
  - docs/podcast-list.md
  - docs/reading-list.md
  - Market Wizards interview with Ed Seykota
  - Public Ed Seykota trend-following materials
---

# Seykota Systematic Trend

Trend following is simple but not easy: cut losses, ride winners, size by risk, follow rules, and accept whipsaws.

## Philosophy

The system protects the trader from emotion. The trader's job is not to predict but to execute the rules and survive the losing streaks that precede big trends.

## Universe & Regime

- **Asset classes**: Futures, FX, commodities, liquid crypto, multi-asset.
- **Universe**: Liquid markets with persistent trends and data.
- **Preferred regime**: Diversified trends.
- **Avoid**: No rules, high costs, insufficient data.
- **Posture**: Mechanical and disciplined.

## Signals

- **Trend Signal** (high): Rule-defined entry/exit.
- **Volatility Unit** (high): Position size by volatility.
- **System Adherence** (high): Follow the system.
- **Whipsaw Tolerance** (medium): Accept small losses.

## Filters

- **Rules Defined** (required): No discretionary vibes.
- **Volatility Sizing** (required): Risk-normalized positions.
- **Stop Defined** (required): Exit rule before entry.
- **Portfolio Heat Controlled** (required): Total risk limits.
- **Discretionary Override** (disqualifier): Reject.
- **No Backtest** (disqualifier): Do not deploy blind.

## Analysis

### 1. Define The System

Entry, exit, sizing, markets, and rebalancing.

### 2. Test The System

Backtest across regimes and markets, including costs.

### 3. Execute Mechanically

No override without formal system change.

### 4. Review Behavior

Did the trader follow rules through losses and winners?

## Position Sizing

- **Initial size**: Fixed fractional or volatility unit.
- **Add rule**: Pyramid by rule only.
- **Max size**: Portfolio heat capped.
- **Cash rule**: No signal means no position.

## Risk Management

- **Primary risk**: Emotional override.
- **Stop**: Mechanical.
- **Correlation**: Group heat limits.
- **Leverage**: System-defined.

## Execution

### Entry Rules

1. System signal fires.
2. Volatility unit calculated.
3. Heat limit allows trade.
4. Stop/exit rule active.

### Exit Rules

1. System exit signal.
2. Stop triggered.
3. Heat/drawdown limits breached.
4. Market removed from universe by rule.

## Monitoring

- **Cadence**: Daily signals, monthly system review.
- **Metrics**: Adherence, drawdown, win/loss distribution, trend capture, heat.
- **Alerts**: Override, overheat, winner cut early.

## Playbooks

### Systematic Trend Memo

Return `Follow System`, `Reduce Risk`, `Stop Out`, or `No System Edge` with rules, signal, sizing, heat, drawdown, and discipline.

## Canonical Cases

- **Seykota's long-term managed-account record**: Often cited in Market Wizards as extraordinary compounding through systematic trend following.
- **Commodity and currency trend cycles**: The method captures large persistent moves while accepting many small losses.
- **Whipsaw periods**: Equally important case: the system survives chop by keeping losses small and waiting for the next trend.

Study these cases for discipline and process, not market prediction.

## Do's and Don'ts

- Do follow the system.
- Do cut losses.
- Do ride winners.
- Don't override rules emotionally.
- Don't expect high win rate.
- Don't oversize after losses.




## Podcasts

- Top Traders Unplugged: https://open.spotify.com/search/Top%20Traders%20Unplugged/shows
- Shared podcast list: ../../docs/podcast-list.md

## Reading List

- Market Wizards: https://www.amazon.com/Market-Wizards-Interviews-Top-Traders/dp/1118273052
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Seykota's Market Wizards interview and public trend-following materials.
