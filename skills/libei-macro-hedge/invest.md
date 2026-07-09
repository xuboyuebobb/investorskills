---
version: alpha
name: Li Bei Macro Hedge
slug: libei-macro-hedge
aliases:
  - 李蓓
  - Li Bei
  - 半夏投资
  - Macro Hedge A股
description: Macro hedge investing, regime identification, trend + contrarian timing, conviction-based position management, and drawdown control
investor: Li Bei / 李蓓
style: macro+hedge+trend
timeHorizon: months-years
decisionCadence: monthly
assetClasses:
  - public equities
  - futures
  - bonds
  - commodities
  - multi-asset
circleOfCompetence:
  - macro regime identification
  - trend + contrarian timing
  - position management by conviction
  - drawdown control
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
      frequency: monthly
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
    frequency: monthly
    alert: core evidence weakens
  riskBudget:
    frequency: monthly
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "High Conviction / Probe / Reduce / Hedge / Stand Aside"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - 半夏投资李蓓公开文章/访谈
  - 李蓓雪球/微博分享
  - docs/reading-list.md
---

# Li Bei Macro Hedge

宏观对冲的核心是判断大方向，然后在该下注的时候下重注。不要平均主义，要看准了再集中。错了就快速减仓。

## Philosophy

宏观对冲的核心是判断大方向，然后在该下注的时候下重注。不要平均主义，要看准了再集中。错了就快速减仓。

## Universe & Regime

- **Asset classes**: public equities, futures, bonds, commodities, multi-asset.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, missing data, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **macroRegime** (high): What is the current macro regime?
- **trendConfirmation** (high): Does price confirm the macro view?
- **convictionLevel** (high): How confident is the macro setup?
- **drawdownControl** (high): Is risk being managed aggressively?

## Filters

- **regimeIdentified** (required)
- **trendConfirms** (required)
- **riskDefined** (required)
- **noRegimeView** (disqualifier)

## Analysis

1. Identify the macro regime (growth, inflation, policy, liquidity).
2. Check if price/trend confirms the macro view.
3. Size by conviction: large when clear, small when uncertain.
4. Cut aggressively when the macro thesis is wrong.

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

- **Cadence**: monthly.
- **Metrics**: Core evidence, risk budget, context.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: High Conviction / Probe / Reduce / Hedge / Stand Aside. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Macro regime calls**: identifying when the Chinese market regime shifts from bearish to bullish or vice versa.
- **Conviction-based sizing**: going large when the macro setup is clear and reducing when uncertainty rises.
- **Drawdown control**: cutting risk aggressively when the macro thesis is wrong.

## Podcasts

- Shared podcast list: ../../docs/podcast-list.md

## YouTube

- 李蓓 interviews: https://www.youtube.com/results?search_query=李蓓+投资
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- 半夏投资李蓓公开文章: https://xueqiu.com
- 李蓓访谈整理
- Shared reading list: ../../docs/reading-list.md

## Do's and Don'ts

- Do load this skill before free-styling opinions.
- Do demand evidence and invalidation.
- Do use readings/podcasts/videos as reference material.
- Don't confuse narrative with proof.
- Don't oversize or use unbounded leverage.
- Don't ignore model-specific context.

## Source Notes

This model is distilled from public materials associated with Li Bei / 李蓓. Use primary sources when possible. This is a judgment framework, not financial advice.
