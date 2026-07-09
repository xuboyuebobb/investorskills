---
version: alpha
name: Deng Xiaofeng Cycle Industry
slug: dengxiaofeng-cycle-industry
aliases:
  - 邓晓峰
  - Deng Xiaofeng
  - 高毅邓晓峰
  - Cycle Industry
description: Cycle-aware industry investing, deep supply-demand research, buying industry leaders at cycle bottoms, and selling at cycle tops
investor: Deng Xiaofeng / 邓晓峰
style: value+cycle+industry
timeHorizon: 2-5 years
decisionCadence: quarterly
assetClasses:
  - public equities
circleOfCompetence:
  - industry cycle analysis
  - supply-demand dynamics
  - deep fundamental research
  - cycle-bottom buying
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
      frequency: quarterly
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
    frequency: quarterly
    alert: core evidence weakens
  riskBudget:
    frequency: quarterly
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Buy Cycle Bottom / Watch / Cycle Still Falling / At Cycle Top / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - 高毅邓晓峰访谈/演讲整理
  - 邓晓峰行业研究笔记
  - docs/reading-list.md
---

# Deng Xiaofeng Cycle Industry

行业有周期，好公司在周期底部买入，在周期顶部卖出。深入研究行业供需格局，找到最有竞争力的龙头，然后耐心等周期。

## Philosophy

行业有周期，好公司在周期底部买入，在周期顶部卖出。深入研究行业供需格局，找到最有竞争力的龙头，然后耐心等周期。

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, missing data, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **cyclePosition** (high): Where is the industry in its cycle?
- **supplyDemand** (high): Is supply being rationalized while demand recovers?
- **industryLeader** (high): Is this the strongest company in the industry?
- **valuationVsCycle** (medium): Is the price reflecting cycle pessimism?

## Filters

- **cyclePositionKnown** (required)
- **isLeader** (required)
- **supplyDemandClear** (required)
- **cycleStillFalling** (disqualifier)

## Analysis

1. Map the industry cycle: bottom, recovery, peak, downturn.
2. Analyze supply-demand dynamics and capacity additions.
3. Identify the industry leader with cost/scale advantage.
4. Buy at cycle bottom when price reflects pessimism; reduce at cycle top.

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

- **Cadence**: quarterly.
- **Metrics**: Core evidence, risk budget, context.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Buy Cycle Bottom / Watch / Cycle Still Falling / At Cycle Top / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Cement/chemical industry cycle plays**: buying leaders when supply is being rationalized and demand is recovering.
- **Auto industry chain research**: mapping the full supply chain to find the best-positioned node.
- **Selling at cycle tops**: reducing when industry capacity expansion signals a coming downturn.

## Podcasts

- Shared podcast list: ../../docs/podcast-list.md

## YouTube

- 邓晓峰 talks: https://www.youtube.com/results?search_query=邓晓峰+投资
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- 邓晓峰访谈整理: https://xueqiu.com
- 高毅邓晓峰行业研究笔记
- Shared reading list: ../../docs/reading-list.md

## Do's and Don'ts

- Do load this skill before free-styling opinions.
- Do demand evidence and invalidation.
- Do use readings/podcasts/videos as reference material.
- Don't confuse narrative with proof.
- Don't oversize or use unbounded leverage.
- Don't ignore model-specific context.

## Source Notes

This model is distilled from public materials associated with Deng Xiaofeng / 邓晓峰. Use primary sources when possible. This is a judgment framework, not financial advice.
