---
version: alpha
name: O'Neil CAN SLIM
slug: oneil-canslim
aliases:
  - CAN SLIM
  - IBD Growth Breakout
description: Earnings acceleration, relative strength, institutional demand, market direction, and clean base breakouts
investor: William O'Neil
style: growth+momentum+breakout
timeHorizon: weeks-months
decisionCadence: daily
assetClasses:
  - public equities
circleOfCompetence:
  - liquid growth stocks
  - earnings acceleration
  - constructive technical bases
universe:
  geographies:
    - United States
    - global listed equities
  instruments:
    - stocks
  marketCap: small-cap to large-cap
  liquidity: high
  dataRequirements:
    - quarterly earnings
    - sales growth
    - OHLCV
    - relative strength
marketRegime:
  preferred: confirmed market uptrend
  avoid: market correction or distribution-heavy downtrend
  posture: aggressive only when market confirms
signals:
  fundamental:
    currentEarnings:
      weight: high
      direction: higher-is-better
      threshold: "> 25% EPS growth preferred"
      frequency: quarterly
      source: earnings reports
      description: Current quarterly earnings should show strong growth.
    annualEarnings:
      weight: high
      direction: trend-up
      frequency: annual
      source: annual reports
      description: Annual earnings should show a strong multi-year trend.
    salesGrowth:
      weight: medium
      direction: higher-is-better
      frequency: quarterly
      source: earnings reports
      description: Sales growth confirms earnings quality.
  technical:
    relativeStrength:
      weight: high
      direction: higher-is-better
      frequency: daily
      source: benchmark comparison
      description: Leaders outperform before and during advances.
    baseQuality:
      weight: high
      frequency: daily
      source: price and volume chart
      description: A constructive base creates a proper buy point.
    breakoutVolume:
      weight: high
      direction: higher-is-better
      frequency: daily
      source: OHLCV
      description: Breakouts should occur on strong demand.
  market:
    generalMarketTrend:
      weight: high
      direction: trend-up
      frequency: daily
      source: market indexes
      description: Most stocks follow the general market.
filters:
  currentEarningsAcceleration: required
  annualEarningsTrend: required
  relativeStrengthLeader: required
  constructiveBase: required
  marketInUptrend: required
  extendedFromPivot: disqualifier
sizing:
  maxPosition: "10-20%"
  maxPortfolio: focused growth portfolio
  convictionThreshold: high
  scalingRule: buy near pivot, add only after progress and constructive action
  riskPerTrade: stop around 7-8% below proper buy point
risk:
  stopLoss: hard
  maxDrawdown: "7-8% from proper buy point"
  trailingStop: use sell rules after advance
  leverage: none
  positionCutRule: sell quickly if breakout fails
metrics:
  epsGrowth:
    frequency: quarterly
    alert: earnings decelerate materially
  relativeStrength:
    frequency: weekly
    alert: falls below leadership group
  priceVsPivot:
    frequency: daily
    alert: breakout fails or stop is hit
playbooks:
  canslimMemo:
    verdictOptions: Buy Point / Watchlist / Extended / Pass / Market Stand Down
    requiredSections: canslim,base,pivot,market,stop,sellRules
sources:
  - docs/podcast-list.md
  - docs/reading-list.md
  - William O'Neil, How to Make Money in Stocks
  - Investor's Business Daily CAN SLIM educational materials
---

# O'Neil CAN SLIM

Great growth stocks usually combine superior earnings, institutional demand, leadership, and constructive price/volume action. Buy leaders as they break out of proper bases in favorable markets, and cut losses quickly when wrong.

## Philosophy

Do not buy cheap stocks because they look statistically cheap. Buy companies with exceptional current growth and market leadership when price action confirms demand.

The general market matters. Even strong stocks often fail in weak markets.

## Universe & Regime

- **Asset classes**: Public equities.
- **Universe**: Liquid growth stocks with earnings data and reliable charts.
- **Preferred regime**: Confirmed market uptrend with leadership expansion.
- **Avoid**: Market correction, heavy distribution, laggards, late-stage extended moves.
- **Posture**: Aggressive only when stock quality, base quality, and market trend align.

## Signals

### CAN SLIM

- **C - Current Earnings** (high, quarterly): Strong recent EPS growth, preferably above 25%.
- **A - Annual Earnings** (high, annual): Multi-year earnings growth and high-quality profitability.
- **N - New** (medium, event-driven): New product, management, industry change, or new high.
- **S - Supply And Demand** (medium, daily): Limited supply plus strong volume accumulation.
- **L - Leader** (high, daily): High relative strength and industry leadership.
- **I - Institutional Sponsorship** (medium, quarterly): Quality institutions accumulating, not overcrowded ownership.
- **M - Market Direction** (high, daily): General market must be supportive.

## Filters

- **Earnings Acceleration** (required): Weak earnings usually disqualify.
- **Relative Strength Leader** (required): Prefer new highs, not cheap lows.
- **Constructive Base** (required): Proper base and pivot are needed for entry.
- **Market In Uptrend** (required): Stand down during broad market weakness.
- **Extended From Pivot** (disqualifier): Do not chase.

## Analysis

### 1. Score CAN SLIM

Check each letter and reject weak fundamentals or poor market conditions.

### 2. Judge The Base

Identify cup-with-handle, flat base, double bottom, or other constructive pattern. Look for volume dry-up in the base and accumulation on the breakout.

### 3. Define Buy And Sell Rules

Buy near the proper pivot. Set a hard stop around 7-8% below the buy point. Sell quickly if the breakout fails.

## Position Sizing

- **Initial size**: Only when near a proper buy point.
- **Add rule**: Add only after progress and constructive price action.
- **Max size**: Focus on leaders, but avoid overconcentration in one theme.
- **Cash rule**: Cash is correct in weak markets.

## Risk Management

- **Primary risk**: Buying extended or ignoring the general market.
- **Stop**: Hard loss cut around 7-8% from the proper buy point.
- **Correlation**: Avoid too many positions in the same industry group.
- **Leverage**: Avoid leverage.

## Execution

### Entry Rules

1. CAN SLIM fundamentals pass.
2. Market trend is favorable.
3. Base is constructive.
4. Price breaks the pivot on volume.

### Exit Rules

1. Stop is hit.
2. Breakout fails quickly.
3. Stock shows repeated distribution.
4. Fundamentals decelerate or leadership breaks.

## Monitoring

- **Cadence**: Daily price/volume, quarterly fundamentals.
- **Metrics**: EPS growth, sales growth, relative strength, volume, market trend.
- **Alerts**: Stop hit, failed breakout, earnings miss, market correction.

## Playbooks

### CAN SLIM Memo

Return `Buy Point`, `Watchlist`, `Extended`, `Pass`, or `Market Stand Down` with CAN SLIM table, base quality, pivot, stop, and sell rules.

## Canonical Cases

- **Syntex, 1963**: O'Neil's famous early winner. The lesson is the CAN SLIM combination of explosive earnings growth, a new product story, institutional demand, and decisive price leadership.
- **Home Depot, early 1980s**: A canonical growth-stock case: new retail category, exceptional sales and earnings growth, leadership, and repeated constructive bases during a major advance.
- **Sea Containers, 1970s**: A classic base-pattern case often used in O'Neil-style chart education, especially for studying cup-with-handle behavior and breakout discipline.

Study these cases for the full stack: current earnings, annual earnings, new catalyst, supply/demand, leadership, sponsorship, and market direction.

## Do's and Don'ts

- Do buy leaders, not laggards.
- Do respect the market direction.
- Do cut losses quickly.
- Don't average down.
- Don't buy extended breakouts.
- Don't ignore weak earnings.




## Podcasts

- Shared podcast list with Spotify links: ../../docs/podcast-list.md

## Reading List

- How to Make Money in Stocks: https://www.amazon.com/How-Make-Money-Stocks-Winning/dp/0071614133
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from William O'Neil's CAN SLIM framework and Investor's Business Daily educational materials.
