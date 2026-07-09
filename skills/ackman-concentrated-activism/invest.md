---
version: alpha
name: Ackman Concentrated Activism
slug: ackman-concentrated-activism
aliases:
  - Bill Ackman
  - Pershing Square
  - Concentrated Activism
description: Concentrated multiyear equity theses, activism catalysts, business quality, and public-market narrative
investor: Bill Ackman
style: activist+quality+concentrated
timeHorizon: 3-7 years
decisionCadence: event-driven
assetClasses:
  - public equities
circleOfCompetence:
  - concentrated longs
  - activism
  - business quality
  - capital structure
  - public thesis communication
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
    verdictOptions: "Concentrated Long / Activist Long / Watch / Needs Catalyst / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/youtube-list.md
  - docs/podcast-list.md
  - docs/reading-list.md
  - Pershing Square presentations and letters
  - Public Bill Ackman interviews
---

# Ackman Concentrated Activism

Own a few great businesses deeply understood, with a clear path to value realization. Concentration is earned by research quality and catalyst clarity, not by bravado.

## Philosophy

Own a few great businesses deeply understood, with a clear path to value realization. Concentration is earned by research quality and catalyst clarity, not by bravado.

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **businessQuality** (high): Durable economics and reinvestment runway.
- **valueGap** (high): Price below intrinsic value with identifiable path to close.
- **catalystPath** (high): Activism, operations, capital allocation, or multiple re-rating.
- **downsideProtection** (high): Balance sheet and business quality protect capital.

## Filters

- **qualityHigh** (required)
- **valueGapClear** (required)
- **catalystPath** (required)
- **noDownsideProtection** (disqualifier)
- **thesisTooComplex** (disqualifier)

## Analysis

1. Underwrite long-term business quality.
2. Estimate intrinsic value and value gap.
3. Define catalyst: activism, ops, capital allocation, re-rating.
4. Size only when research depth supports concentration.

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

Return one of: Concentrated Long / Activist Long / Watch / Needs Catalyst / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Canadian Pacific**: activist operating improvement and governance change creating multiyear value.
- **Restaurant Brands / platform-style compounders**: concentrated ownership of high-quality consumer platforms.
- **High-conviction multiyear presentations**: public thesis quality and catalyst path as part of the investment process.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.




## Podcasts

- Invest Like the Best: https://open.spotify.com/search/Invest%20Like%20the%20Best/shows
- Shared podcast list: ../../docs/podcast-list.md


## YouTube

- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- Pershing Square: https://pershingsquareholdings.com/
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- Pershing Square presentations and letters
- Public Bill Ackman interviews

Use primary sources when possible. This is a judgment framework, not financial advice.
