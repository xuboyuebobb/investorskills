---
version: alpha
name: Feng Liu Reverse Weak-Hand
slug: fengliu-reverse-weakhand
aliases:
  - 冯柳
  - Feng Liu
  - 弱者体系
  - Reverse Weak-Hand
description: Weak-hand reverse investing, asymmetric risk/reward, consensus divergence, probability-based position management
investor: Feng Liu / 冯柳
style: contrarian+value+reverse
timeHorizon: 1-3 years
decisionCadence: event-driven
assetClasses:
  - public equities
circleOfCompetence:
  - reverse investing
  - consensus divergence identification
  - asymmetric payoff structuring
  - probability-based sizing
universe:
  geographies:
    - China / A-shares
    - global where applicable
  instruments:
    - stocks
    - sector/industry leaders
  liquidity: medium-high
  dataRequirements:
    - model-specific financial, technical, policy, or sentiment data
marketRegime:
  preferred: conditions where this model's edge is active
  avoid: outside competence or missing critical data
  posture: evidence-first and risk-aware
signals:
  core:
    primaryEdge:
      weight: high
      frequency: event-driven
      source: model-specific data
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
    verdictOptions: "Asymmetric Long / Watch / Consensus Still Right / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - 冯柳公开分享/访谈: https://xueqiu.com
  - 高毅资产冯柳访谈整理
  - docs/reading-list.md
---

# Feng Liu Reverse Weak-Hand

弱者体系：假设你在信息、资源、速度上都是弱者。不要和强者拼信息优势，而是找不对称的机会——跌不动的地方买入，赔率够大的地方下注。

## Philosophy

弱者体系：假设你在信息、资源、速度上都是弱者。不要和强者拼信息优势，而是找不对称的机会——跌不动的地方买入，赔率够大的地方下注。

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, missing data, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **consensusDivergence** (high): Where does the market agree too much?
- **downsideProtection** (high): Is the price already pricing in worst case?
- **asymmetricPayoff** (high): Is upside >> downside if the view changes?
- **probabilityAssessment** (high): What is the probability of each scenario?

## Filters

- **downsideProtected** (required)
- **asymmetryClear** (required)
- **consensusErrorIdentifiable** (required)
- **noDownsideProtection** (disqualifier)
- **consensusStillRight** (disqualifier)

## Analysis

1. Identify where consensus is strongest and potentially wrong.
2. Check if downside is already priced in (跌不动).
3. Assess asymmetry: upside if wrong consensus breaks vs cost if it doesn't.
4. Size by probability, not by conviction. Add as evidence improves.

## Position Sizing

- **Initial size**: Only after filters pass and risk is defined.
- **Add rule**: Add as evidence improves.
- **Max size**: Constrained by model style and risk.
- **Cash/pass rule**: Valid when no setup clears the bar.

## Risk Management

- **Primary risk**: Applying the model outside its edge.
- **Invalidation**: Thesis, structure, or risk-budget break.
- **Correlation**: Avoid hidden concentration.
- **Leverage**: Limited unless model explicitly supports it.

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
- **Metrics**: Core evidence, risk budget, context.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Asymmetric Long / Watch / Consensus Still Right / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **High-momentum consensus shorts that reversed**: identifying when crowded bearish consensus exhausts and downside is limited.
- **Neglected mid-cap value recovery**: buying ignored companies where downside is protected by assets/cash and upside is optionality.
- **Weak-hand position management**: sizing by probability and adjusting as information improves, not by conviction alone.

## Podcasts

- Shared podcast list: ../../docs/podcast-list.md

## YouTube

- 冯柳 interviews: https://www.youtube.com/results?search_query=冯柳+投资
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- 冯柳访谈整理: https://xueqiu.com
- 弱者体系笔记
- Shared reading list: ../../docs/reading-list.md

## Do's and Don'ts

- Do load this skill before free-styling opinions.
- Do demand evidence and invalidation.
- Do use readings/podcasts/videos as reference material.
- Don't confuse narrative with proof.
- Don't oversize or use unbounded leverage.
- Don't ignore model-specific context.

## Source Notes

This model is distilled from public materials associated with Feng Liu / 冯柳. Use primary sources when possible. This is a judgment framework, not financial advice.
