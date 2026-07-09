---
version: alpha
name: Dalio Principles All-Weather
slug: dalio-principles-allweather
aliases:
  - Ray Dalio
  - All Weather
  - Economic Machine
  - Risk Parity
description: Economic machine, debt cycles, risk parity, diversification, and all-weather portfolio construction
investor: Ray Dalio
style: macro+multi-asset+risk-parity
timeHorizon: years
decisionCadence: monthly
assetClasses:
  - public equities
  - bonds
  - commodities
  - gold
  - cash
  - multi-asset
circleOfCompetence:
  - economic machine
  - debt cycles
  - inflation regimes
  - risk parity
  - diversified beta
universe:
  geographies:
    - global
  instruments:
    - relevant liquid instruments in scope
  liquidity: medium-high
  dataRequirements:
    - primary financial and market data for the model
marketRegime:
  preferred: conditions where this model's edge is active
  avoid: conditions outside competence or without required data
  posture: model-specific and risk-aware
signals:
  core:
    primaryEdge:
      weight: high
      frequency: monthly
      source: model-specific data
      description: Main edge of the investor model
filters:
  inUniverse: required
  evidenceSufficient: required
  riskDefined: required
  outsideCompetence: disqualifier
sizing:
  maxPosition: risk- and model-adjusted
  maxPortfolio: consistent with model concentration style
  convictionThreshold: high
  scalingRule: add only as evidence and risk/reward improve
risk:
  stopLoss: thesis- or structure-based
  maxDrawdown: model-aware
  correlationLimit: avoid hidden factor concentration
  leverage: limited or none unless model explicitly allows
  positionCutRule: exit when thesis, structure, or risk budget breaks
metrics:
  thesisHealth:
    frequency: monthly
    alert: core evidence weakens
  riskBudget:
    frequency: monthly
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Overweight / Underweight / Hedge / Neutral / Rebalance"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/youtube-list.md
  - docs/podcast-list.md
  - docs/reading-list.md
  - Ray Dalio, Principles
  - Bridgewater All Weather materials
  - How the Economic Machine Works
---

# Dalio Principles All-Weather

Do not bet the portfolio on one macro forecast. Balance assets that do well in different growth and inflation regimes, control risk contributions, and respect debt-cycle dynamics.

## Philosophy

Do not bet the portfolio on one macro forecast. Balance assets that do well in different growth and inflation regimes, control risk contributions, and respect debt-cycle dynamics.

## Universe & Regime

- **Asset classes**: public equities, bonds, commodities, gold, cash, multi-asset.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **growthRegime** (high): Is growth rising or falling?
- **inflationRegime** (high): Is inflation rising or falling?
- **debtCycleStage** (high): Short-term and long-term debt cycle position.
- **riskContribution** (high): Equalize risk, not capital, across diversifiers.

## Filters

- **regimeMapped** (required)
- **riskContributionDefined** (required)
- **singleAssetBet** (disqualifier)
- **noDiversifiers** (disqualifier)

## Analysis

1. Map growth and inflation regime.
2. Identify debt-cycle stage and policy constraints.
3. Allocate by risk contribution across equities, bonds, commodities, gold, cash.
4. Rebalance when regime or risk contributions drift.

## Position Sizing

- **Initial size**: Only after filters pass and risk is defined.
- **Add rule**: Add as evidence improves and risk/reward remains attractive.
- **Max size**: Constrained by model style and portfolio risk.
- **Cash rule**: Cash or neutrality is valid when no setup clears the bar.

## Risk Management

- **Primary risk**: Applying the model outside its edge or without evidence.
- **Stop / invalidation**: Thesis, structure, or risk-budget based.
- **Correlation**: Avoid hidden concentration in one factor.
- **Leverage**: Limited unless the model explicitly supports it.

## Execution

### Entry Rules

1. Setup is inside universe.
2. Core signals support action.
3. Filters pass.
4. Risk and invalidation are defined.

### Exit Rules

1. Thesis breaks.
2. Evidence reverses.
3. Risk budget is breached.
4. Better opportunity appears inside the model.

## Monitoring

- **Cadence**: monthly.
- **Metrics**: Core evidence, risk budget, valuation/regime/context as relevant.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Overweight / Underweight / Hedge / Neutral / Rebalance. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **All Weather Fund design**: diversify across growth/inflation regimes rather than predicting one outcome.
- **2008 and crisis diversification lessons**: concentrated equity beta fails when debt cycles break.
- **Economic machine framework**: productivity, short-term debt cycle, long-term debt cycle as portfolio context.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.




## Podcasts

- Odd Lots: https://open.spotify.com/search/Odd%20Lots%20Bloomberg/shows
- Macro Voices: https://open.spotify.com/search/Macro%20Voices/shows
- Shared podcast list: ../../docs/podcast-list.md


## YouTube

- How the Economic Machine Works: https://www.youtube.com/watch?v=PHe0bXAIuk0
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- Economic Principles: https://www.economicprinciples.org/
- Changing World Order: https://www.amazon.com/Changing-World-Order-Nations-Succeed/dp/1982160276
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- Ray Dalio, Principles
- Bridgewater All Weather materials
- How the Economic Machine Works

Use primary sources when possible. This is a judgment framework, not financial advice.
