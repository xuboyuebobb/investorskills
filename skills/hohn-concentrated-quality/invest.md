---
version: alpha
name: Hohn Concentrated Quality
slug: hohn-concentrated-quality
aliases:
  - Chris Hohn
  - TCI Fund Management
  - Concentrated Quality
description: Concentrated quality compounders, pricing power, high ROIC, engagement, and long-duration ownership
investor: Chris Hohn
style: quality+concentrated+engagement
timeHorizon: 5-10 years
decisionCadence: quarterly
assetClasses:
  - public equities
circleOfCompetence:
  - quality compounders
  - pricing power
  - high ROIC
  - engagement/activism-lite
  - concentrated portfolios
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
    verdictOptions: "Concentrated Own / Engage / Watch / Quality Broken / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - Public TCI / Chris Hohn letters and reporting
---

# Hohn Concentrated Quality

Own only exceptional businesses with durable pricing power and high returns on capital. Concentration is justified by quality and long duration, not by trading.

## Philosophy

Own only exceptional businesses with durable pricing power and high returns on capital. Concentration is justified by quality and long duration, not by trading.

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **pricingPower** (high): Ability to raise prices without losing customers.
- **roic** (high): High and durable returns on capital.
- **reinvestmentRunway** (high): Can deploy capital at attractive returns.
- **engagementLeverage** (medium): Can ownership improve governance/capital allocation?

## Filters

- **qualityExceptional** (required)
- **returnsDurable** (required)
- **governanceAcceptable** (required)
- **mediocreBusiness** (disqualifier)

## Analysis

1. Score business quality and pricing power.
2. Estimate long-term ROIC and runway.
3. Check valuation versus multi-year compounding.
4. Use engagement if governance or capital allocation can improve value.

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

Return one of: Concentrated Own / Engage / Watch / Quality Broken / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **High-quality compounder concentration**: owning a small number of exceptional businesses for years.
- **Engagement on capital allocation and governance**: improving value without classic raider tactics.
- **Pricing-power franchises**: businesses that can raise prices and reinvest at high returns.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.

## Source Notes

This model is distilled from:

- Public TCI / Chris Hohn letters and reporting

Use primary sources when possible. This is a judgment framework, not financial advice.
