---
version: alpha
name: Spruce Point Accounting Short
slug: spruce-point-accounting-short
aliases:
  - Spruce Point
  - Accounting Quality Short
description: Accounting-quality shorts, cash conversion analysis, aggressive non-GAAP metrics, acquisition accounting, and governance red flags
investor: Spruce Point Capital
style: short+forensic+accounting
timeHorizon: months-years
decisionCadence: event-driven
assetClasses:
  - public equities
circleOfCompetence:
  - earnings quality
  - cash conversion
  - non-GAAP adjustments
  - acquisition accounting
  - governance analysis
universe:
  geographies:
    - global
  instruments:
    - relevant private or public instruments in scope
  liquidity: medium-high
  dataRequirements:
    - primary documents and model-specific evidence
marketRegime:
  preferred: conditions where this model's edge is active
  avoid: outside competence or insufficient evidence
  posture: evidence-first and risk-aware
signals:
  core:
    primaryEdge:
      weight: high
      frequency: event-driven
      source: model-specific primary evidence
      description: Core edge of this judgment system
filters:
  inUniverse: required
  evidenceSufficient: required
  riskDefined: required
  outsideCompetence: disqualifier
sizing:
  maxPosition: model- and risk-adjusted
  maxPortfolio: consistent with concentration style
  convictionThreshold: high
  scalingRule: increase only as evidence strengthens
risk:
  stopLoss: thesis- or structure-based
  maxDrawdown: model-aware
  correlationLimit: avoid hidden factor concentration
  leverage: limited or none unless model allows
  positionCutRule: exit when thesis or evidence breaks
metrics:
  thesisHealth:
    frequency: event-driven
    alert: core evidence weakens
  riskBudget:
    frequency: event-driven
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Short / Watch / Accounting Risk High / Needs More Data / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/youtube-list.md
  - docs/podcast-list.md
  - docs/reading-list.md
  - Spruce Point Capital public research reports
---

# Spruce Point Accounting Short

Reported earnings are often a marketing document. Follow cash, accruals, adjustments, and acquisition accounting until the true economic earnings appear.

## Philosophy

Reported earnings are often a marketing document. Follow cash, accruals, adjustments, and acquisition accounting until the true economic earnings appear.

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, weak evidence, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **cashConversion** (high): EBITDA/earnings versus free cash flow.
- **accrualQuality** (high): Receivables, inventory, deferred revenue, capitalization.
- **nonGaapAggression** (high): Add-backs that obscure real costs.
- **acquisitionDistortion** (high): Deal accounting masking organic weakness.

## Filters

- **accountingMechanismSpecific** (required)
- **cashEvidenceReviewed** (required)
- **primaryFilingsRead** (required)
- **multipleOnlyStory** (disqualifier)

## Analysis

1. Reconcile earnings to cash.
2. Stress-test accruals, capitalization, and non-GAAP add-backs.
3. Review acquisition contribution versus organic trends.
4. Define short thesis, catalyst, and what would prove the accounting sound.

## Position Sizing

- **Initial size**: Only after filters pass.
- **Add rule**: Add as evidence improves.
- **Max size**: Constrained by model style and risk.
- **Cash / pass rule**: Valid when no setup clears the bar.

## Risk Management

- **Primary risk**: Acting without primary evidence or outside edge.
- **Invalidation**: Thesis, evidence, or structure breaks.
- **Correlation**: Avoid one-factor concentration.
- **Leverage / short structure**: Only with explicit risk controls.

## Execution

### Entry Rules

1. Inside universe.
2. Core signals support action.
3. Filters pass.
4. Risk and invalidation defined.

### Exit Rules

1. Thesis breaks.
2. Evidence reverses.
3. Risk budget breached.
4. Better opportunity appears.

## Monitoring

- **Cadence**: event-driven.
- **Metrics**: Core evidence, incentives/structure, risk budget.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Short / Watch / Accounting Risk High / Needs More Data / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Serial-acquirer accounting skepticism**: growth that depends on deals and adjustments rather than organic cash earnings.
- **Cash conversion breakdowns**: reported profits not turning into free cash flow.
- **Governance and compensation misalignment**: incentives that reward optics over owner earnings.

## Do's and Don'ts

- Do demand primary evidence.
- Do define the mechanism precisely.
- Do define invalidation.
- Don't trade narratives without proof.
- Don't ignore incentives and structure.
- Don't force a decision when data is incomplete.




## Podcasts

- Shared podcast list with Spotify links: ../../docs/podcast-list.md


## YouTube

- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- Spruce Point archive: https://www.sprucepointcap.com/
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- Spruce Point Capital public research reports

Use primary sources when possible. This is a judgment framework, not financial advice.
