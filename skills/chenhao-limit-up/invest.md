---
version: alpha
name: Chen Hao Limit-Up Sentiment
slug: chenhao-limit-up
aliases:
  - 陈浩
  - Chen Hao
  - 涨停板
  - Limit-Up Sentiment
  - A股情绪周期
description: A-share limit-up sentiment trading, market emotion cycles, board strength analysis, and aggressive short-term momentum
investor: Chen Hao / 陈浩
style: momentum+sentiment+short-term
timeHorizon: days
decisionCadence: intraday
assetClasses:
  - public equities
circleOfCompetence:
  - limit-up board analysis
  - market sentiment cycles
  - momentum aggression
  - intraday execution
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
      frequency: intraday
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
    frequency: intraday
    alert: core evidence weakens
  riskBudget:
    frequency: intraday
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Aggressive Buy / Watch Board / Sentiment Cooling / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - 陈浩《短线英雄》/涨停板方法论
  - A股涨停板技术分析材料
  - docs/reading-list.md
---

# Chen Hao Limit-Up Sentiment

涨停板是 A 股最极致的供需表达。理解情绪周期、板块强弱、资金流向，才能在短线上占优势。但这不是价值投资，是情绪博弈。

## Philosophy

涨停板是 A 股最极致的供需表达。理解情绪周期、板块强弱、资金流向，才能在短线上占优势。但这不是价值投资，是情绪博弈。

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, missing data, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **boardStrength** (high): Is the board/sector showing collective strength?
- **sentimentCycle** (high): Where is market sentiment in its cycle?
- **limitUpQuality** (high): Is the limit-up backed by genuine demand or just retail FOMO?
- **followThrough** (high): Does the next day confirm or fail?

## Filters

- **boardStrong** (required)
- **sentimentRising** (required)
- **volumeGenuine** (required)
- **sentimentCooling** (disqualifier)
- **retailFomoOnly** (disqualifier)

## Analysis

1. Diagnose market sentiment cycle: fear, recovery, greed, euphoria.
2. Rank board/sector strength and identify the leader.
3. Judge limit-up quality: genuine demand vs retail chasing.
4. Define entry, follow-through confirmation, and exit.

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

- **Cadence**: intraday.
- **Metrics**: Core evidence, risk budget, context.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Aggressive Buy / Watch Board / Sentiment Cooling / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Limit-up board chain**: identifying when consecutive limit-ups signal genuine institutional demand vs retail FOMO.
- **Sentiment cycle timing**: buying when sentiment is recovering from extreme fear, selling when euphoria peaks.
- **Board strength ranking**: choosing the strongest board (板块) and its leader for momentum continuation.

## Podcasts

- Shared podcast list: ../../docs/podcast-list.md

## YouTube

- 涨停板教学: https://www.youtube.com/results?search_query=涨停板+技术
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- 《短线英雄》/涨停板方法论
- Shared reading list: ../../docs/reading-list.md

## Do's and Don'ts

- Do load this skill before free-styling opinions.
- Do demand evidence and invalidation.
- Do use readings/podcasts/videos as reference material.
- Don't confuse narrative with proof.
- Don't oversize or use unbounded leverage.
- Don't ignore model-specific context.

## Source Notes

This model is distilled from public materials associated with Chen Hao / 陈浩. Use primary sources when possible. This is a judgment framework, not financial advice.
