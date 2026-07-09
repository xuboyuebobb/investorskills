---
version: alpha
name: Watsa Insurance Float Value
slug: watsa-insurance-float
aliases:
  - Prem Watsa
  - Fairfax Financial
  - Insurance Float Value
description: Insurance float, contrarian value allocation, special situations, and downside-focused capital compounding
investor: Prem Watsa
style: value+contrarian+insurance
timeHorizon: 5-10 years
decisionCadence: quarterly
assetClasses:
  - public equities
  - credit
  - insurance
  - multi-asset
circleOfCompetence:
  - insurance float
  - contrarian value
  - special situations
  - macro-aware value allocation
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
      frequency: quarterly
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
    frequency: quarterly
    alert: core evidence weakens
  riskBudget:
    frequency: quarterly
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Own / Add On Fear / Hedge / Float Impaired / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/reading-list.md
  - Fairfax Financial annual letters
  - Public Prem Watsa interviews and history
---

# Watsa Insurance Float Value

Combine disciplined insurance operations with opportunistic value investing. Float is powerful only if underwriting is sound and capital is allocated with a margin of safety.

## Philosophy

Combine disciplined insurance operations with opportunistic value investing. Float is powerful only if underwriting is sound and capital is allocated with a margin of safety.

## Universe & Regime

- **Asset classes**: public equities, credit, insurance, multi-asset.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **underwritingQuality** (high): Combined ratio and insurance discipline.
- **floatGrowth** (high): Cost and durability of float.
- **contrarianOpportunity** (high): Where fear creates asset bargains.
- **bookValueCompounding** (high): Growth in intrinsic/book value over time.

## Filters

- **underwritingSound** (required)
- **floatNotToxic** (required)
- **allocationDisciplined** (required)
- **growthAtAnyPrice** (disqualifier)

## Analysis

1. Assess insurance underwriting and float quality.
2. Map capital allocation opportunities across equities, credit, special situations.
3. Demand margin of safety and downside protection.
4. Measure progress by book/intrinsic value compounding.

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

- **Cadence**: quarterly.
- **Metrics**: Core evidence, risk budget, valuation/regime/context as relevant.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Own / Add On Fear / Hedge / Float Impaired / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Fairfax insurance float model**: using underwriting and float as permanent capital for value investing.
- **Contrarian crisis investments**: deploying capital when markets are fearful.
- **Long-term book-value compounding**: measuring success by intrinsic value growth, not quarterly optics.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.



## Reading List

- Fairfax letters: https://www.fairfax.ca/
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- Fairfax Financial annual letters
- Public Prem Watsa interviews and history

Use primary sources when possible. This is a judgment framework, not financial advice.
