---
version: alpha
name: Cathie Wood Innovation
slug: cathie-wood-innovation
aliases:
  - Cathie Wood
  - ARK Invest
  - Disruptive Innovation
description: Disruptive innovation, S-curve adoption, technology convergence, and long-duration thematic growth investing
investor: Cathie Wood
style: growth+thematic+innovation
timeHorizon: 5-10 years
decisionCadence: monthly
assetClasses:
  - public equities
circleOfCompetence:
  - disruptive innovation
  - S-curve adoption
  - AI/robotics/energy/multiomics themes
  - platform technology convergence
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
    verdictOptions: "Theme Overweight / Single-Name Long / Watch / Too Early / Too Expensive / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - ARK Invest research materials
  - Public Cathie Wood presentations and interviews
---

# Cathie Wood Innovation

Innovation creates winner-take-most platforms. The edge is identifying converging technologies early, underwriting S-curve adoption, and holding through volatility if the innovation thesis remains intact.

## Philosophy

Innovation creates winner-take-most platforms. The edge is identifying converging technologies early, underwriting S-curve adoption, and holding through volatility if the innovation thesis remains intact.

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **sCurveStage** (high): Where is adoption on the S-curve?
- **techConvergence** (high): Do multiple technologies reinforce the platform?
- **addressableMarketExpansion** (high): Is the market still expanding?
- **executionEvidence** (high): Are product, cost curves, and adoption validating the thesis?

## Filters

- **innovationThesisClear** (required)
- **adoptionPathDefined** (required)
- **executionEvidence** (required)
- **pureHypeNoTech** (disqualifier)
- **noPathToScale** (disqualifier)

## Analysis

1. Define the innovation thesis and S-curve stage.
2. Map technology convergence and competitive dynamics.
3. Check cost curves, adoption data, and execution milestones.
4. Size for long duration and high volatility.

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

Return one of: Theme Overweight / Single-Name Long / Watch / Too Early / Too Expensive / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Tesla as multi-tech platform**: EV, autonomy, energy, and software convergence as an S-curve case.
- **Genomics and multiomics innovation waves**: long-duration technology adoption before consensus revenue.
- **Innovation portfolio construction**: basket of disruptive platforms rather than single-point forecasts.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.

## Source Notes

This model is distilled from:

- ARK Invest research materials
- Public Cathie Wood presentations and interviews

Use primary sources when possible. This is a judgment framework, not financial advice.
