---
version: alpha
name: Livermore Breakout
slug: livermore
aliases:
  - Pivotal Point Trading
  - Line Of Least Resistance
description: Trend following, pivotal-point breakouts, pyramiding, and strict loss cutting
investor: Jesse Livermore
style: trend-following+breakout+momentum
timeHorizon: days-weeks
decisionCadence: daily
assetClasses:
  - public equities
  - commodities
  - multi-asset
circleOfCompetence:
  - liquid trending markets
  - breakouts from constructive consolidation
  - high-volume leaders
universe:
  geographies:
    - global liquid markets
  instruments:
    - stocks
    - futures
    - spot markets
  marketCap: any
  liquidity: high
  dataRequirements:
    - OHLCV
    - relative strength
marketRegime:
  preferred: clear trend with expanding participation
  avoid: choppy, rangebound, illiquid, headline-only markets
  posture: opportunistic
signals:
  technical:
    lineOfLeastResistance:
      weight: high
      direction: trend-up
      frequency: daily
      source: price structure
      description: The market should move naturally in the trade direction with minimal resistance.
    pivotalPoint:
      weight: high
      threshold: prior resistance or consolidation high
      frequency: daily
      source: OHLCV
      description: Entry should occur near a decisive level, not randomly in the middle of a range.
    volumeConfirmation:
      weight: high
      direction: higher-is-better
      frequency: daily
      source: volume data
      description: Breakouts need demand confirmation.
    relativeStrength:
      weight: medium
      direction: higher-is-better
      frequency: weekly
      source: benchmark comparison
      description: Prefer leaders moving ahead of the market.
filters:
  liquidity: required
  trendConfirmed: required
  pivotalPointValid: required
  noAveragingDown: required
  extendedFromPivot: disqualifier
sizing:
  maxPosition: "20%"
  maxPortfolio: concentrated winners only
  convictionThreshold: high
  scalingRule: start small, add only after profit and confirmation
  riskPerTrade: "0.5-1.0% of equity"
risk:
  stopLoss: hard
  trailingStop: required after meaningful advance
  maxDrawdown: small loss before thesis damage
  leverage: limited
  positionCutRule: exit when price fails the pivotal point or stops acting right
metrics:
  priceVsPivot:
    frequency: daily
    alert: closes back below pivot after breakout
  volume:
    frequency: daily
    alert: breakout lacks volume or reversal comes on heavy volume
  trendStructure:
    frequency: weekly
    alert: lower highs and lower lows
playbooks:
  tradePlan:
    verdictOptions: Enter / Wait / Hold / Add / Exit / Stand Down
    requiredSections: trend,pivot,volume,sizing,stop,invalidation
sources:
  - Jesse Livermore, How to Trade in Stocks
  - Edwin Lefevre, Reminiscences of a Stock Operator
---

# Livermore Breakout

The market is the final judge. Do not argue with price. Wait for a decisive pivotal point, enter when the line of least resistance becomes clear, add only when the trade works, and keep losses small.

## Philosophy

The edge is not prediction. The edge is patience, timing, and discipline. A trader waits for the market to reveal direction, risks little when wrong, and presses when right.

Never average down. A losing position is information. The market is saying the timing or thesis is wrong.

## Universe & Regime

- **Asset classes**: Liquid equities, commodities, and other trendable markets.
- **Universe**: High-liquidity instruments with reliable OHLCV data.
- **Preferred regime**: Clear directional markets, leadership, expanding volume, broad participation.
- **Avoid**: Thin markets, random ranges, false breakouts, headline-only moves.
- **Posture**: Patient until a pivotal point appears, aggressive only after confirmation.

## Signals

### Technical

- **Line of Least Resistance** (high, trend-up, daily): Price should move naturally in the intended direction. Choppy action means wait.
- **Pivotal Point** (high, daily): A breakout above a meaningful consolidation, prior resistance, or reversal point.
- **Volume Confirmation** (high, daily): Breakout volume should expand and show real demand.
- **Relative Strength** (medium, weekly): Prefer markets leading their peers or benchmark.

## Filters

- **Liquidity** (required): The market must be easy to enter and exit.
- **Trend Confirmed** (required): No trade without directional structure.
- **Pivotal Point Valid** (required): Entry must be close to a level that defines risk.
- **No Averaging Down** (required): Never add to a losing position.
- **Extended From Pivot** (disqualifier): If the trade is far from the pivot, risk/reward is damaged.

## Analysis

### 1. Define The Trend

- Is the asset making higher highs and higher lows?
- Is it leading or lagging the market?
- Is the general market supportive?

### 2. Locate The Pivotal Point

- What level proves the breakout?
- What level proves failure?
- Is the current price close enough to define a small loss?

### 3. Judge Whether Price Acts Right

- Does price hold above the pivot?
- Does volume confirm the move?
- Are reactions shallow and recoveries strong?

## Position Sizing

- **Initial size**: Small enough that the stop costs only 0.5-1.0% of equity.
- **Add rule**: Add only after the first entry is profitable and price confirms.
- **Max size**: Build through winners, not opinions.
- **Cash rule**: Cash is correct when no clean pivotal point exists.

## Risk Management

- **Primary risk**: False breakout and emotional averaging down.
- **Stop**: Hard stop near the failed pivot or defined support.
- **Correlation**: Avoid multiple trades that depend on the same market move.
- **Leverage**: Limited and only with tight risk control.

## Execution

### Entry Rules

1. Trend is clear.
2. Price breaks or reclaims a valid pivotal point.
3. Volume confirms demand.
4. Stop is close enough to keep loss small.

### Exit Rules

1. Price fails the pivotal point.
2. The market stops acting right.
3. Heavy-volume reversal appears after an extended move.
4. Trend structure breaks.

## Monitoring

- **Cadence**: Daily for active trades, weekly for trend context.
- **Metrics**: Pivot hold, volume, relative strength, trend structure.
- **Alerts**: Close below pivot, failed follow-through, heavy-volume reversal.

## Playbooks

### Trade Plan

Return `Enter`, `Wait`, `Hold`, `Add`, `Exit`, or `Stand Down` with entry, stop, first add point, max risk, and invalidation.

## Canonical Cases

- **1907 Panic short campaign**: A classic Livermore case of recognizing broad market weakness, aligning with the line of least resistance, and covering into panic rather than overstaying after the forced-selling climax.
- **1929 crash short campaign**: The iconic example of waiting for market structure to deteriorate, pressing the dominant downtrend, and letting a major move work instead of covering too early.
- **Bethlehem Steel advance**: Often cited as a Livermore-style winner where a powerful industry trend, leadership, and price confirmation allowed a large position to be built through strength.

Study these cases for pattern recognition: the trade starts with market confirmation, risk is defined by price action, and size increases only after the position works.

## Do's and Don'ts

- Do wait for the market to confirm.
- Do keep losses small.
- Do add only to profitable positions.
- Don't average down.
- Don't chase far above the pivot.
- Don't force trades in a dull market.

## Source Notes

This model is distilled from Livermore's published trading rules and the market-operator lessons commonly associated with his career. Treat `Reminiscences of a Stock Operator` as a trading psychology source, not a literal rulebook.
