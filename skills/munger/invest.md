---
version: alpha
name: Munger Mental Models
slug: munger
aliases:
  - Inversion And Incentives
  - Quality Filter
description: Mental models, inversion, incentives, quality filters, and concentrated decisions
investor: Charlie Munger
style: mental-models+quality
timeHorizon: 5-10 years
decisionCadence: event-driven
assetClasses:
  - public equities
  - private businesses
  - multi-asset
circleOfCompetence:
  - understandable businesses
  - incentive analysis
  - quality compounding
  - decision review
universe:
  geographies:
    - global
  instruments:
    - stocks
    - businesses
    - funds
  marketCap: any
  liquidity: medium-high
  dataRequirements:
    - business model
    - management incentives
    - financial history
marketRegime:
  preferred: any, if quality and price justify action
  avoid: complexity, bad incentives, promotional mania
  posture: selective
signals:
  qualitative:
    inversion:
      weight: high
      frequency: event-driven
      source: pre-mortem analysis
      description: Start by asking how the decision can fail.
    incentives:
      weight: high
      frequency: annual
      source: proxy, compensation, behavior
      description: Incentives often explain behavior better than stated intentions.
    quality:
      weight: high
      frequency: annual
      source: business analysis
      description: Prefer wonderful businesses with durable economics.
    lollapaloozaEffects:
      weight: medium
      frequency: event-driven
      source: multidisciplinary analysis
      description: Multiple reinforcing forces can create unusually strong outcomes.
filters:
  circleOfCompetence: required
  incentivesAcceptable: required
  obviousStupidityAvoided: required
  qualityHigh: required
  tooComplex: disqualifier
sizing:
  maxPosition: concentrated when obvious
  maxPortfolio: few exceptional decisions
  convictionThreshold: very high
  scalingRule: act only when understanding, quality, price, and opportunity cost align
risk:
  stopLoss: thesis-based
  maxDrawdown: tolerate volatility only if thesis remains intact
  leverage: none
  positionCutRule: exit when incentives, quality, or understanding fail
metrics:
  incentiveAlignment:
    frequency: annual
    alert: compensation or behavior diverges from owners
  moatQuality:
    frequency: annual
    alert: quality deteriorates
  opportunityCost:
    frequency: event-driven
    alert: clearly superior alternative appears
playbooks:
  decisionReview:
    verdictOptions: Act / Wait / Pass / Too Hard
    requiredSections: inversion,incentives,models,quality,opportunityCost,risks
sources:
  - Charlie Munger, Poor Charlie's Almanack
  - Berkshire Hathaway annual meeting transcripts
  - Charlie Munger public talks and interviews
---

# Munger Mental Models

The goal is not to be busy. The goal is to avoid stupidity, understand incentives, recognize exceptional quality, and act decisively only when the conclusion is obvious enough.

## Philosophy

Invert, always invert. The first job is to avoid ruin, bad incentives, false precision, and problems outside the circle of competence.

Great decisions often come from multiple models pointing in the same direction. Bad decisions often come from one seductive story overwhelming better judgment.

## Universe & Regime

- **Asset classes**: Public equities, private businesses, funds, and major capital allocation decisions.
- **Universe**: Understandable situations where incentives and economics can be evaluated.
- **Preferred regime**: Any, if the decision is clear and quality is high.
- **Avoid**: Complexity, leverage, bad incentives, hype, and unclear accounting.
- **Posture**: Selective and patient.

## Signals

### Qualitative

- **Inversion** (high, event-driven): What would make this fail?
- **Incentives** (high, annual): Who benefits from what behavior?
- **Quality** (high, annual): Is this an exceptional business or only an average one?
- **Lollapalooza Effects** (medium, event-driven): Are several forces reinforcing each other?

## Filters

- **Circle Of Competence** (required): If not understood, reject.
- **Incentives Acceptable** (required): Bad incentives eventually matter.
- **Obvious Stupidity Avoided** (required): Remove bad ideas before optimizing good ones.
- **Quality High** (required): Avoid mediocre businesses unless price is extraordinary.
- **Too Complex** (disqualifier): Complexity can hide risk.

## Analysis

### 1. Invert The Decision

List the top ways this investment can fail. If any failure mode is likely and severe, pass.

### 2. Examine Incentives

Review management, customers, competitors, regulators, sellers, promoters, and your own incentives.

### 3. Apply Multiple Models

Use models from business, psychology, economics, competition, scale, leverage, regulation, and probability.

### 4. Judge Quality And Opportunity Cost

Only act when quality is high and the opportunity is better than alternatives.

## Position Sizing

- **Initial size**: Only after inversion and incentives pass.
- **Add rule**: Add when quality and opportunity cost improve.
- **Max size**: Concentration is allowed only for unusually clear decisions.
- **Cash rule**: Inactivity is acceptable.

## Risk Management

- **Primary risk**: Missing hidden incentives or complexity.
- **Stop**: Thesis-based.
- **Correlation**: Avoid multiple positions exposed to the same hidden assumption.
- **Leverage**: None.

## Execution

### Entry Rules

1. Inside circle of competence.
2. Incentives are aligned.
3. Quality is high.
4. Opportunity cost is favorable.

### Exit Rules

1. Incentives deteriorate.
2. Quality was misjudged.
3. A better opportunity appears.
4. Original reasoning proves flawed.

## Monitoring

- **Cadence**: Event-driven and annual.
- **Metrics**: Incentives, quality, moat, opportunity cost, leverage.
- **Alerts**: Promotional behavior, complexity increase, incentive drift.

## Playbooks

### Decision Review

Return `Act`, `Wait`, `Pass`, or `Too Hard` with inversion, incentives, models, quality filter, opportunity cost, and failure modes.

## Canonical Cases

- **See's Candies, 1972**: The defining Munger/Berkshire quality-at-a-fair-price case. The lesson is pricing power, brand habit, high returns on capital, and the value of a business that can compound with little incremental capital.
- **Costco**: Munger's favorite example of incentives, culture, scale economics, customer trust, and long-term operating discipline reinforcing each other. The lesson is identifying a system where stakeholder incentives create durable quality.
- **BYD, 2008**: Often associated with Munger's influence at Berkshire. The lesson is recognizing unusual founder capability, manufacturing depth, and long-term category potential before the market fully understands the opportunity.

Study these cases through inversion, incentives, quality, opportunity cost, and lollapalooza effects rather than through valuation alone.

## Do's and Don'ts

- Do invert first.
- Do examine incentives.
- Do stay inside competence.
- Don't confuse complexity with insight.
- Don't force action.
- Don't ignore obvious stupidity.

## Source Notes

This model is distilled from Munger's public talks, Berkshire annual meeting commentary, and Poor Charlie's Almanack.
