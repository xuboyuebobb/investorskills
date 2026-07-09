---
version: alpha
name: Paul Tudor Jones Macro Trend
slug: ptj-macro-trend
aliases:
  - PTJ Macro
  - Tudor Risk Control
description: "Macro trend, turning points, technical confirmation, liquidity, and strict drawdown control"
investor: Paul Tudor Jones
style: macro+trend-following+risk-management
timeHorizon: days-months
decisionCadence: daily
assetClasses:
  - public equities
  - futures
  - fx
  - rates
  - commodities
circleOfCompetence:
  - macro trends
  - market turning points
  - risk management
  - index and futures trading
universe:
  geographies:
    - global liquid markets
  instruments:
    - futures
    - indexes
    - currencies
    - rates
    - commodities
  liquidity: high
  dataRequirements:
    - price trend
    - macro data
    - liquidity indicators
    - positioning
marketRegime:
  preferred: clear macro trend or major turning point with technical confirmation
  avoid: no stop, unclear trend, high correlation without hedge
  posture: risk-first, opportunistic
signals:
  macro:
    macroRegime:
      weight: high
      frequency: weekly
      source: inflation, growth, policy, liquidity
      description: Macro backdrop defines trade direction and risk.
    liquidityShift:
      weight: high
      frequency: weekly
      source: central banks and financial conditions
      description: Liquidity often drives major trends and reversals.
  technical:
    trendConfirmation:
      weight: high
      direction: trend-up
      frequency: daily
      source: price, moving averages, trend structure
      description: Price must confirm the macro view.
    stopLevel:
      weight: high
      frequency: daily
      source: chart structure
      description: Every trade needs a level that proves it wrong.
filters:
  macroSetupClear: required
  trendConfirmed: required
  stopDefined: required
  downsideControlled: required
  noStop: disqualifier
  largeLossRisk: disqualifier
sizing:
  maxPosition: risk-budget based
  maxPortfolio: avoid excessive correlated macro exposure
  convictionThreshold: medium-high
  scalingRule: add only as trend confirms and stop can move favorably
  riskPerTrade: small enough to avoid large drawdown
risk:
  stopLoss: hard
  maxDrawdown: strict portfolio drawdown control
  correlationLimit: monitor macro factor crowding
  leverage: limited and liquid only
  positionCutRule: cut when trend breaks or loss limit is hit
metrics:
  trend:
    frequency: daily
    alert: trend breaks key level
  liquidity:
    frequency: weekly
    alert: liquidity regime changes
  drawdown:
    frequency: daily
    alert: risk budget breached
playbooks:
  macroTrendMemo:
    verdictOptions: Long / Short / Probe / Cut / Stand Aside
    requiredSections: macro,trend,entry,stop,risk,invalidation
sources:
  - Public Paul Tudor Jones interviews
  - Market Wizards interviews
  - Public Tudor Investment risk-control discussions
---

# Paul Tudor Jones Macro Trend

PTJ-style trading begins with survival. The objective is to catch major trends or turning points while avoiding catastrophic losses.

## Philosophy

Price confirms or rejects macro ideas. A trader must know where they are wrong and cut before a small loss becomes a large loss.

## Universe & Regime

- **Asset classes**: Futures, equities, rates, FX, commodities.
- **Universe**: Liquid macro markets.
- **Preferred regime**: Major trend or turning point with price confirmation.
- **Avoid**: No stop, no trend, high uncertainty with large loss risk.
- **Posture**: Opportunistic but risk-first.

## Signals

- **Macro Regime** (high): Growth, inflation, policy, liquidity.
- **Liquidity Shift** (high): Liquidity can drive inflections.
- **Trend Confirmation** (high): Price must confirm.
- **Stop Level** (high): Defined wrong point is mandatory.

## Filters

- **Macro Setup Clear** (required): No vague macro trade.
- **Trend Confirmed** (required): Do not fight the tape.
- **Stop Defined** (required): No stop, no trade.
- **Downside Controlled** (required): Avoid large loss.
- **No Stop** (disqualifier): Reject.
- **Large Loss Risk** (disqualifier): Reject.

## Analysis

### 1. Define Macro Setup

What regime or catalyst can move the market?

### 2. Confirm With Price

Is price action aligned with the macro view?

### 3. Define Stop And Sizing

Where is the trade wrong? What size keeps loss small?

### 4. Monitor Risk

Risk control is the edge when the view is wrong.

## Position Sizing

- **Initial size**: Probe with defined stop.
- **Add rule**: Add only when trend confirms.
- **Max size**: Risk-budget constrained.
- **Cash rule**: Stand aside when stop cannot be defined.

## Risk Management

- **Primary risk**: Large drawdown from stubborn macro view.
- **Stop**: Hard stop.
- **Correlation**: Avoid one macro factor dominating.
- **Leverage**: Limited.

## Execution

### Entry Rules

1. Macro setup clear.
2. Trend confirms.
3. Stop defined.
4. Position fits drawdown budget.

### Exit Rules

1. Stop hit.
2. Trend breaks.
3. Macro regime changes.
4. Drawdown limit breached.

## Monitoring

- **Cadence**: Daily price/risk, weekly macro.
- **Metrics**: Trend, stop distance, drawdown, liquidity, positioning.
- **Alerts**: Stop breach, trend break, liquidity reversal.

## Playbooks

### Macro Trend Memo

Return `Long`, `Short`, `Probe`, `Cut`, or `Stand Aside` with macro setup, trend, entry, stop, risk, and invalidation.

## Canonical Cases

- **1987 crash short**: PTJ's defining case: macro/technical analog work, market structure, and risk control aligned before a major break.
- **Commodity and currency macro trades**: Tudor's broader record reflects liquid macro trend-taking with strict downside control.
- **Risk-control culture**: The most durable case is not one trade, but the rule that avoiding large losses keeps the trader alive.

Study these cases for turning points, technical confirmation, and loss control.

## Do's and Don'ts

- Do define the stop first.
- Do respect price confirmation.
- Do cut quickly.
- Don't average losers.
- Don't let a macro view become identity.
- Don't risk large drawdowns.

## Source Notes

This model is distilled from public PTJ interviews, Market Wizards material, and public discussions of Tudor risk management.
