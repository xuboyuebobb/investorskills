---
version: alpha
name: Gundlach Bonds
slug: gundlach-bonds
aliases:
  - Jeffrey Gundlach
  - DoubleLine
  - Bond King Gundlach
description: Duration, yield curve, credit spreads, fixed-income relative value, and macro-driven bond portfolio judgment
investor: Jeffrey Gundlach
style: credit+macro+income
timeHorizon: months-years
decisionCadence: weekly
assetClasses:
  - rates
  - credit
  - public equities
  - multi-asset
circleOfCompetence:
  - duration
  - yield curve
  - credit spreads
  - mortgage/credit relative value
  - rates regime
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
      frequency: weekly
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
    frequency: weekly
    alert: core evidence weakens
  riskBudget:
    frequency: weekly
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Long Duration / Short Duration / Overweight Credit / Underweight Credit / Neutral / Hedge"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/reading-list.md
  - Public Jeffrey Gundlach interviews and DoubleLine presentations
---

# Gundlach Bonds

In fixed income, the key is not yield alone. It is duration, curve, credit quality, liquidity, and whether you are paid for the risks you take.

## Philosophy

In fixed income, the key is not yield alone. It is duration, curve, credit quality, liquidity, and whether you are paid for the risks you take.

## Universe & Regime

- **Asset classes**: rates, credit, public equities, multi-asset.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **realYield** (high): Real yield compensation after inflation.
- **durationRisk** (high): Interest-rate sensitivity vs expected path.
- **creditSpread** (high): Spread compensation for default and liquidity risk.
- **curveShape** (medium): Steepener/flattener and rolldown dynamics.

## Filters

- **riskPremiumClear** (required)
- **liquidityAcceptable** (required)
- **yieldChasingOnly** (disqualifier)
- **noDurationMap** (disqualifier)

## Analysis

1. Define rates regime and inflation path.
2. Map duration, curve, and credit exposures.
3. Compare yield to risk: duration, default, liquidity, convexity.
4. Choose instruments with best compensation, not highest headline yield.

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

- **Cadence**: weekly.
- **Metrics**: Core evidence, risk budget, valuation/regime/context as relevant.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Long Duration / Short Duration / Overweight Credit / Underweight Credit / Neutral / Hedge. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Post-crisis bond opportunity recognition**: buying when yields and spreads compensate for risk.
- **Curve and duration regime calls**: shifting portfolio duration as the rates cycle turns.
- **Credit relative value**: choosing where spread compensation exceeds default and liquidity risk.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.



## Reading List

- DoubleLine: https://doubleline.com/
- Lyn Alden research: https://www.lynalden.com/
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- Public Jeffrey Gundlach interviews and DoubleLine presentations

Use primary sources when possible. This is a judgment framework, not financial advice.
