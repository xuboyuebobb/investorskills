---
version: alpha
name: Templeton Max Pessimism
slug: templeton-max-pessimism
aliases:
  - John Templeton
  - Maximum Pessimism
  - Global Contrarian Value
description: Global contrarian value, maximum pessimism buying, long-term recovery, and cross-border opportunity search
investor: John Templeton
style: value+contrarian+global
timeHorizon: 3-7 years
decisionCadence: event-driven
assetClasses:
  - public equities
circleOfCompetence:
  - global value
  - crisis buying
  - country/sector pessimism
  - long-term recovery underwriting
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
      frequency: event-driven
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
    frequency: event-driven
    alert: core evidence weakens
  riskBudget:
    frequency: event-driven
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Buy Pessimism / Scale In / Watch / Trap / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/youtube-list.md
  - docs/podcast-list.md
  - docs/reading-list.md
  - John Templeton biographies and investment principles
  - Templeton Growth Fund history
---

# Templeton Max Pessimism

Bull markets are born on pessimism. Search worldwide, buy at the point of maximum pessimism, and require a large discount to long-term normalized value.

## Philosophy

Bull markets are born on pessimism. Search worldwide, buy at the point of maximum pessimism, and require a large discount to long-term normalized value.

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **pessimismExtreme** (high): Fear, outflows, valuation collapse.
- **normalizedValue** (high): Long-term earnings/asset power through cycle.
- **survivalOdds** (high): Business or country can endure the crisis.
- **globalRelativeValue** (medium): Opportunity vs other world markets.

## Filters

- **pessimismIdentifiable** (required)
- **survivalPlausible** (required)
- **discountLarge** (required)
- **permanentCapitalLossLikely** (disqualifier)

## Analysis

1. Identify where pessimism is extreme.
2. Estimate normalized long-term value.
3. Check survival and policy/capital constraints.
4. Scale in as fear peaks and facts stabilize.

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

- **Cadence**: event-driven.
- **Metrics**: Core evidence, risk budget, valuation/regime/context as relevant.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Buy Pessimism / Scale In / Watch / Trap / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Post-war and crisis country buying**: buying entire markets when fear is extreme.
- **Maximum pessimism principle**: the best time to buy is when others are despondent.
- **Global opportunity set**: looking beyond home-country bias for mispriced recovery.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.




## Podcasts

- Shared podcast list with Spotify links: ../../docs/podcast-list.md


## YouTube

- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- John Templeton biographies and investment principles
- Templeton Growth Fund history

Use primary sources when possible. This is a judgment framework, not financial advice.
