---
version: alpha
name: Einhorn Forensic Short
slug: einhorn-forensic-short
aliases:
  - David Einhorn
  - Greenlight Capital
  - Forensic Short
description: Forensic accounting shorts, governance and capital-allocation failures, and evidence-based long/short fundamental analysis
investor: David Einhorn
style: short+forensic+value
timeHorizon: months-years
decisionCadence: event-driven
assetClasses:
  - public equities
  - derivatives
circleOfCompetence:
  - forensic accounting
  - short selling
  - governance analysis
  - capital allocation critique
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
    verdictOptions: "Short / Long / Watch / Evidence Incomplete / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/reading-list.md
  - David Einhorn speeches and letters
  - Greenlight Capital public materials
  - Fooling Some of the People All of the Time
---

# Einhorn Forensic Short

The market often trusts management and adjusted earnings too much. Edge comes from reading footnotes, cash conversion, incentives, and capital allocation with forensic discipline.

## Philosophy

The market often trusts management and adjusted earnings too much. Edge comes from reading footnotes, cash conversion, incentives, and capital allocation with forensic discipline.

## Universe & Regime

- **Asset classes**: public equities, derivatives.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **accountingQuality** (high): Cash conversion, accruals, footnotes, related parties.
- **governanceIncentives** (high): Compensation, related-party deals, disclosure quality.
- **capitalAllocation** (high): Buybacks, M&A, dilution, empire building.
- **shortStructure** (high): Borrow, squeeze risk, catalyst, and asymmetry.

## Filters

- **primaryEvidence** (required)
- **mechanismSpecific** (required)
- **borrowSurvivable** (required)
- **headlineOnly** (disqualifier)
- **unlimitedSqueeze** (disqualifier)

## Analysis

1. Read primary filings and footnotes.
2. Identify accounting/governance/capital-allocation mechanism.
3. Define catalyst and short structure.
4. Size for borrow, squeeze, and being early.

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

Return one of: Short / Long / Watch / Evidence Incomplete / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Allied Capital and similar forensic shorts**: public short theses built from document-level accounting skepticism.
- **Lehman-era financial skepticism**: balance-sheet and accounting questions before market consensus caught up.
- **Value longs with governance discipline**: Greenlight's long book often pairs forensic skepticism with classic value.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.



## Reading List

- Fooling Some of the People All of the Time: https://www.amazon.com/Fooling-Some-People-All-Time/dp/0470481544
- Greenlight Capital: https://www.greenlightcapital.com/
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- David Einhorn speeches and letters
- Greenlight Capital public materials
- Fooling Some of the People All of the Time

Use primary sources when possible. This is a judgment framework, not financial advice.
