---
version: alpha
name: Hindenburg Investigation
slug: hindenburg-investigation
aliases:
  - Hindenburg Research
  - Investigative Short Report
description: Investigative short research, promoter and related-party networks, disclosure failures, and catalyst-driven public short reports
investor: Hindenburg Research
style: short+investigation+event
timeHorizon: weeks-months
decisionCadence: event-driven
assetClasses:
  - public equities
  - derivatives
circleOfCompetence:
  - investigative research
  - promoter networks
  - disclosure gaps
  - related-party mapping
  - public short catalysts
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
    verdictOptions: "Publishable Short / Watch / Needs More Evidence / Squeeze Risk / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/youtube-list.md
  - docs/podcast-list.md
  - docs/reading-list.md
  - Hindenburg Research public reports
  - Public interviews and post-report case studies
---

# Hindenburg Investigation

A short report is only as strong as its evidence chain. Find the network, the incentive, the false claim, and the catalyst that forces the market to confront it.

## Philosophy

A short report is only as strong as its evidence chain. Find the network, the incentive, the false claim, and the catalyst that forces the market to confront it.

## Universe & Regime

- **Asset classes**: public equities, derivatives.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, weak evidence, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **evidenceChain** (high): Documents, records, and sources form a coherent case.
- **promoterIncentives** (high): Who benefits from promotion, issuance, or opacity?
- **disclosureGap** (high): Public story diverges from filings or reality.
- **catalystPath** (high): What event forces repricing?

## Filters

- **evidenceChainStrong** (required)
- **incentiveMapClear** (required)
- **catalystDefined** (required)
- **rumorOnly** (disqualifier)
- **uncappedSqueeze** (disqualifier)

## Analysis

1. Identify the public story and who promotes it.
2. Map related parties, promoters, and cash/equity incentives.
3. Build a numbered evidence chain.
4. Define catalyst, legal/disclosure angle, short structure, and invalidation.

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

Return one of: Publishable Short / Watch / Needs More Evidence / Squeeze Risk / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Promoter-network and stock-promotion cases**: mapping who benefits from narrative and issuance.
- **Disclosure-gap investigations**: public claims versus filings, audits, and related-party reality.
- **Catalyst-driven report releases**: how evidence plus distribution can reprice a story quickly.

## Do's and Don'ts

- Do demand primary evidence.
- Do define the mechanism precisely.
- Do define invalidation.
- Don't trade narratives without proof.
- Don't ignore incentives and structure.
- Don't force a decision when data is incomplete.




## Podcasts

- Invest Like the Best: https://open.spotify.com/search/Invest%20Like%20the%20Best/shows
- Odd Lots: https://open.spotify.com/search/Odd%20Lots%20Bloomberg/shows
- Shared podcast list: ../../docs/podcast-list.md


## YouTube

- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- Hindenburg archive: https://hindenburgresearch.com/
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- Hindenburg Research public reports
- Public interviews and post-report case studies

Use primary sources when possible. This is a judgment framework, not financial advice.
