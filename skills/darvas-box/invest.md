---
version: alpha
name: Darvas Box
slug: darvas-box
aliases:
  - Nicolas Darvas Box Trading
  - Box Breakout
description: New-high momentum, box consolidation, breakout confirmation, and mechanical stop placement
investor: Nicolas Darvas
style: momentum+breakout+growth
timeHorizon: days-weeks
decisionCadence: daily
assetClasses:
  - public equities
circleOfCompetence:
  - liquid growth stocks
  - new-high momentum
  - box consolidations
universe:
  geographies:
    - global listed equities
  instruments:
    - stocks
  marketCap: small-cap to large-cap
  liquidity: high
  dataRequirements:
    - daily OHLCV
    - weekly OHLCV
    - relative strength
marketRegime:
  preferred: momentum market with growth leadership
  avoid: broad market downtrend or failed breakout environment
  posture: mechanical and selective
signals:
  technical:
    newHighs:
      weight: high
      direction: higher-is-better
      frequency: daily
      source: price data
      description: Darvas candidates should show leadership by reaching new highs.
    boxHigh:
      weight: high
      frequency: daily
      source: OHLCV
      description: Upper boundary of the consolidation box and breakout level.
    boxLow:
      weight: high
      frequency: daily
      source: OHLCV
      description: Lower boundary that defines stop placement.
    breakoutVolume:
      weight: medium
      direction: higher-is-better
      frequency: daily
      source: volume data
      description: Volume confirms demand on the move above the box.
    relativeStrength:
      weight: medium
      direction: higher-is-better
      frequency: weekly
      source: benchmark comparison
      description: Prefer stocks outperforming the market.
filters:
  nearNewHighs: required
  boxDefined: required
  liquidityHigh: required
  breakoutAboveBox: required for buy verdict
  sloppyBox: disqualifier
  extendedFromBox: disqualifier
sizing:
  maxPosition: "10-20%"
  maxPortfolio: focused momentum basket
  convictionThreshold: medium-high
  scalingRule: buy breakout, trail stop to new box as trend advances
  riskPerTrade: defined by distance from entry to box stop
risk:
  stopLoss: hard below box
  trailingStop: move stop up as new boxes form
  maxDrawdown: limited to box failure
  leverage: none
  positionCutRule: sell if price falls back into or below failed box
metrics:
  priceVsBox:
    frequency: daily
    alert: closes back inside or below the box after breakout
  volume:
    frequency: daily
    alert: breakout fails on heavy reversal volume
  relativeStrength:
    frequency: weekly
    alert: leadership breaks
playbooks:
  boxMemo:
    verdictOptions: Buy Breakout / Watch Box / Extended / Failed Box / Pass
    requiredSections: box,breakout,volume,stop,sizing,invalidation
sources:
  - docs/youtube-list.md
  - docs/podcast-list.md
  - docs/reading-list.md
  - Nicolas Darvas, How I Made $2,000,000 in the Stock Market
---

# Darvas Box

Find strong stocks making new highs, define a consolidation box, buy a breakout above the box, and place the stop below the box. The box turns momentum into a risk-defined trade.

## Philosophy

Do not predict. Observe. A stock that rises to new highs, consolidates constructively, and breaks out with demand is showing strength. Risk is controlled by the lower boundary of the box.

## Universe & Regime

- **Asset classes**: Public equities.
- **Universe**: Liquid growth or momentum stocks near new highs.
- **Preferred regime**: Momentum-friendly market with leadership participation.
- **Avoid**: Weak market, illiquid stocks, sloppy boxes, late extended moves.
- **Posture**: Mechanical and selective.

## Signals

### Technical

- **New Highs** (high, daily): Strength should be visible before the box forms.
- **Box High** (high, daily): Upper boundary and breakout trigger.
- **Box Low** (high, daily): Lower boundary and risk level.
- **Breakout Volume** (medium, daily): Demand confirmation.
- **Relative Strength** (medium, weekly): Prefer market leaders.

## Filters

- **Near New Highs** (required): Darvas boxes are for leaders, not laggards.
- **Box Defined** (required): Need clear high and low boundaries.
- **Liquidity High** (required): Must enter and exit cleanly.
- **Breakout Above Box** (required for buy): No buy verdict without breakout.
- **Sloppy Box** (disqualifier): Wide, random action weakens the setup.
- **Extended From Box** (disqualifier): Do not chase.

## Analysis

### 1. Identify Candidate Strength

Is the stock making new highs and outperforming peers?

### 2. Define The Box

Mark the box high and low. The box must be clear enough that risk can be measured.

### 3. Evaluate Breakout

Buy only when price decisively exceeds the box high, preferably with volume.

### 4. Set Stop And Next Box

Initial stop goes below the box. If the stock advances and forms a new box, move risk up.

## Position Sizing

- **Initial size**: Based on distance from entry to box stop.
- **Add rule**: Add only after a new higher box forms and breaks out.
- **Max size**: Keep concentrated but avoid too much exposure to one momentum theme.
- **Cash rule**: Stay out when no clean box exists.

## Risk Management

- **Primary risk**: False breakout or buying an extended move.
- **Stop**: Hard stop below box.
- **Correlation**: Avoid many boxes in the same crowded growth theme.
- **Leverage**: None.

## Execution

### Entry Rules

1. Stock is near new highs.
2. Box is clearly defined.
3. Breakout above box high occurs.
4. Stop below box defines acceptable risk.

### Exit Rules

1. Price falls back below box or stop.
2. Breakout fails quickly.
3. Relative strength breaks.
4. Market turns hostile to momentum.

## Monitoring

- **Cadence**: Daily price and volume, weekly relative strength.
- **Metrics**: Box high, box low, price vs box, volume, relative strength.
- **Alerts**: Breakout failure, stop hit, new box formed.

## Playbooks

### Box Memo

Return `Buy Breakout`, `Watch Box`, `Extended`, `Failed Box`, or `Pass` with box levels, stop, volume, sizing, and invalidation.

## Canonical Cases

- **Lorillard**: One of the well-known Darvas book examples: a strong stock formed a box, broke out, and allowed risk to be controlled by the lower boundary.
- **E. L. Bruce**: A classic box-trading case from Darvas's account, useful for studying how a stock can move from one consolidation box to a higher box.
- **Texas Instruments**: A momentum leadership case where new highs, growth excitement, and repeated price consolidation created a box-style advance.
- **Thiokol Chemical**: Another Darvas-era momentum case showing how strong thematic growth stocks can be traded mechanically through boxes rather than valuation arguments.

Study these cases for box definition, breakout trigger, stop placement, and moving the stop up only as the stock forms higher boxes.

## Do's and Don'ts

- Do define the box before buying.
- Do use the box to control risk.
- Do move stops up as new boxes form.
- Don't average down.
- Don't chase far above the box.
- Don't use the model on weak, illiquid stocks.




## Podcasts

- Shared podcast list with Spotify links: ../../docs/podcast-list.md


## YouTube

- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- How I Made $2,000,000 in the Stock Market: https://www.amazon.com/How-Made-000-000-Market/dp/1607961235
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Nicolas Darvas's published box method and should be applied as a risk-defined momentum process, not as a guarantee that every box breakout works.
