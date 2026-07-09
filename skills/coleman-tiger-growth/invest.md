---
version: alpha
name: Coleman Tiger Growth
slug: coleman-tiger-growth
aliases:
  - Chase Coleman
  - Tiger Global
  - Tiger Cub Growth
description: Scalable growth platforms, unit economics, network effects, growth duration, and concentrated tech growth investing
investor: Chase Coleman / Tiger Global
style: growth+tech+concentrated
timeHorizon: 3-7 years
decisionCadence: quarterly
assetClasses:
  - public equities
  - private equities
circleOfCompetence:
  - tech platforms
  - unit economics
  - network effects
  - growth duration
  - private-to-public growth
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
    verdictOptions: "Concentrated Growth Long / Watch / Too Expensive / Growth Broken / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - Public Tiger Global / Chase Coleman reporting and growth-investing case studies
---

# Coleman Tiger Growth

Own scalable platforms with improving unit economics and long growth duration. The key is not next quarter's beat; it is whether growth can compound for years with durable advantage.

## Philosophy

Own scalable platforms with improving unit economics and long growth duration. The key is not next quarter's beat; it is whether growth can compound for years with durable advantage.

## Universe & Regime

- **Asset classes**: public equities, private equities.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **growthDuration** (high): How long can high growth continue?
- **unitEconomics** (high): Contribution margin, payback, LTV/CAC, retention.
- **networkEffects** (high): Does scale improve product and moat?
- **valuationVsDuration** (high): Is price reasonable for durable growth?

## Filters

- **scalableModel** (required)
- **unitEconomicsPositiveOrImproving** (required)
- **growthDurationCredible** (required)
- **brokenRetention** (disqualifier)
- **noPathToProfit** (disqualifier)

## Analysis

1. Define product, customer, and growth engine.
2. Underwrite unit economics and retention.
3. Estimate growth duration and competitive moat.
4. Compare valuation to multi-year compounding path.

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

Return one of: Concentrated Growth Long / Watch / Too Expensive / Growth Broken / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Internet platform compounders**: long-duration ownership of scalable tech platforms with network effects.
- **Private-to-public growth continuum**: underwriting growth companies across private and public markets.
- **Growth duration over near-term multiple**: paying for multi-year scale if unit economics and moat support it.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.

## Source Notes

This model is distilled from:

- Public Tiger Global / Chase Coleman reporting and growth-investing case studies

Use primary sources when possible. This is a judgment framework, not financial advice.
