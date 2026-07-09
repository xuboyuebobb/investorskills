---
version: alpha
name: Minervini VCP
slug: minervini-vcp
aliases:
  - Volatility Contraction Pattern
  - SEPA Breakout
  - Minervini Trend Template
description: Volatility contraction, stage-2 leadership, tightness, pivot breakout, and fast loss cutting
investor: Mark Minervini
style: momentum+breakout+growth
timeHorizon: days-weeks
decisionCadence: daily
assetClasses:
  - public equities
circleOfCompetence:
  - growth stock breakouts
  - VCP bases
  - stage-2 uptrends
  - relative strength leadership
universe:
  geographies:
    - United States
    - global listed equities
  instruments:
    - stocks
  marketCap: small-cap to large-cap
  liquidity: high
  dataRequirements:
    - OHLCV
    - moving averages
    - relative strength
    - earnings and sales growth preferred
marketRegime:
  preferred: confirmed uptrend with leadership and constructive breadth
  avoid: bear market, distribution-heavy market, loose volatile bases
  posture: selective and tactical
signals:
  technical:
    stageTwoTrend:
      weight: high
      direction: trend-up
      frequency: daily
      source: moving averages and price structure
      description: The stock should be in a stage-2 uptrend with price above key moving averages.
    vcpContractions:
      weight: high
      direction: lower-is-better
      frequency: daily
      source: OHLCV
      description: Pullbacks should contract in depth and volatility.
    tightness:
      weight: high
      direction: stable-is-better
      frequency: daily
      source: price structure
      description: Tight action near the pivot shows supply has dried up.
    volumeDryUp:
      weight: high
      direction: lower-is-better
      frequency: daily
      source: volume data
      description: Volume should contract before breakout and expand on breakout.
    relativeStrength:
      weight: high
      direction: higher-is-better
      frequency: weekly
      source: benchmark comparison
      description: Leaders hold up and push near highs before the market fully follows.
  fundamental:
    earningsGrowth:
      weight: medium
      direction: higher-is-better
      frequency: quarterly
      source: earnings reports
      description: Strong earnings and sales improve the odds of institutional demand.
filters:
  stageTwoTrend: required
  relativeStrengthLeader: required
  volatilityContraction: required
  pivotDefined: required
  stopTightEnough: required
  looseBase: disqualifier
  extendedFromPivot: disqualifier
sizing:
  maxPosition: "10-25% depending on liquidity and stop distance"
  maxPortfolio: focused leaders
  convictionThreshold: high
  scalingRule: enter at pivot, add only after progress and constructive action
  riskPerTrade: "0.5-1.0% of equity"
risk:
  stopLoss: hard
  trailingStop: move up with higher platforms or key moving averages
  maxDrawdown: cut quickly if breakout fails
  leverage: none
  positionCutRule: exit if price fails pivot, violates stop, or loses stage-2 character
metrics:
  priceVsPivot:
    frequency: daily
    alert: breakout fails back below pivot
  contractionDepth:
    frequency: daily
    alert: pullbacks widen instead of contract
  relativeStrength:
    frequency: weekly
    alert: leadership breaks
playbooks:
  vcpMemo:
    verdictOptions: Buyable Breakout / Watch Pivot / Too Loose / Extended / Failed / Pass
    requiredSections: trendTemplate,vcp,pivot,volume,relativeStrength,stop,sizing,invalidation
sources:
  - Mark Minervini, Trade Like a Stock Market Wizard
  - Mark Minervini, Think and Trade Like a Champion
  - Public Mark Minervini VCP and SEPA education
---

# Minervini VCP

The Volatility Contraction Pattern is a supply-and-demand setup. A leading stock in an uptrend pulls back through a sequence of smaller contractions, volume dries up, supply is absorbed, and a breakout through the pivot offers a tight-risk entry.

## Philosophy

Do not buy because a stock is cheap. Buy strength after risk contracts. The best growth leaders often show tightness before institutional demand pushes them higher.

Risk comes first. A VCP is only useful if the pivot and stop create an asymmetric setup.

## Universe & Regime

- **Asset classes**: Public equities.
- **Universe**: Liquid growth stocks in stage-2 uptrends.
- **Preferred regime**: Confirmed uptrend, leadership, constructive breadth.
- **Avoid**: Bear markets, wide loose bases, extended moves, declining moving averages.
- **Posture**: Selective and tactical.

## Signals

### Technical

- **Stage-2 Trend** (high, daily): Price above rising key moving averages, ideally with 50-day above 150/200-day.
- **VCP Contractions** (high, daily): Pullbacks get progressively smaller.
- **Tightness** (high, daily): Price tightens near pivot as supply dries up.
- **Volume Dry-Up** (high, daily): Quiet volume before breakout, expansion on breakout.
- **Relative Strength** (high, weekly): Stock leads the market and peers.

### Fundamental

- **Earnings Growth** (medium, quarterly): Strong growth supports institutional demand.

## Filters

- **Stage-2 Trend** (required): No VCP in a downtrend.
- **Relative Strength Leader** (required): Prefer leaders near highs.
- **Volatility Contraction** (required): Pullbacks should tighten, not widen.
- **Pivot Defined** (required): Entry must have a clear trigger.
- **Stop Tight Enough** (required): Risk must be acceptable.
- **Loose Base** (disqualifier): Wide volatile action means supply is not controlled.
- **Extended From Pivot** (disqualifier): Do not chase.

## Analysis

### 1. Confirm Trend Template

Is price above rising key moving averages? Is the stock in a stage-2 uptrend and near highs?

### 2. Map The Contractions

List each pullback. Are they getting smaller? Is volatility contracting?

### 3. Check Volume And Tightness

Is volume drying up near the pivot? Is price tight enough to show supply absorption?

### 4. Define Pivot And Stop

The pivot is the breakout level. The stop should sit below the pivot area or structural low where the setup fails.

## Position Sizing

- **Initial size**: Based on stop distance and 0.5-1.0% account risk.
- **Add rule**: Add only after the breakout works and price forms constructive action.
- **Max size**: Concentrate in best leaders, but avoid all positions in one theme.
- **Cash rule**: Cash is correct when no clean VCP exists.

## Risk Management

- **Primary risk**: Buying loose patterns or chasing above pivot.
- **Stop**: Hard stop below pivot/structure.
- **Correlation**: Avoid too many correlated growth leaders.
- **Leverage**: None.

## Execution

### Entry Rules

1. Trend template passes.
2. VCP contractions are clear.
3. Pivot is defined.
4. Volume and tightness confirm supply absorption.
5. Stop creates acceptable risk.

### Exit Rules

1. Price fails the pivot.
2. Stop is hit.
3. Base becomes loose and volatile.
4. Relative strength breaks.
5. General market turns hostile.

## Monitoring

- **Cadence**: Daily price/volume, weekly trend and relative strength.
- **Metrics**: Pivot, stop, contraction depth, volume dry-up, relative strength, moving averages.
- **Alerts**: Failed breakout, wider contraction, volume reversal, RS break.

## Playbooks

### VCP Memo

Return `Buyable Breakout`, `Watch Pivot`, `Too Loose`, `Extended`, `Failed`, or `Pass` with trend template, VCP structure, pivot, stop, volume, relative strength, and invalidation.

## Canonical Cases

- **Tesla, 2013**: A widely studied growth-leader breakout case: strong earnings/sales story, massive relative strength, and technical platforms that rewarded disciplined entries.
- **Nvidia leadership advances**: A modern VCP-style study in stage-2 trend, institutional demand, tight consolidations, and repeated breakout opportunities during major AI/semiconductor leadership.
- **Monster Beverage long-term leader**: A classic superperformance stock for studying leadership, earnings growth, and repeated constructive bases across a long advance.

Study these cases for stage-2 trend, tightening action, volume dry-up, pivot quality, and quick loss cutting when the breakout fails.

## Do's and Don'ts

- Do demand stage-2 trend alignment.
- Do wait for contractions to tighten.
- Do define the stop before entry.
- Don't buy loose bases.
- Don't chase far above the pivot.
- Don't average down.

## Source Notes

This model is distilled from Mark Minervini's published SEPA and VCP materials, including his books and public education. Verify exact chart examples against primary Minervini sources before public attribution.
