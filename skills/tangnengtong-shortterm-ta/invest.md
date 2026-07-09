---
version: alpha
name: Tang Nengtong Short-Term TA
slug: tangnengtong-shortterm-ta
aliases:
  - 唐能通
  - Tang Nengtong
  - 短线是银
  - A-share Short-Term TA
description: A-share short-term technical analysis, volume-price relationships, MA systems, breakout signals, and momentum entry/exit
investor: Tang Nengtong / 唐能通
style: technical+momentum+short-term
timeHorizon: days-weeks
decisionCadence: daily
assetClasses:
  - public equities
circleOfCompetence:
  - volume-price analysis
  - MA system trading
  - breakout signals
  - short-term momentum
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
      frequency: daily
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
    frequency: daily
    alert: core evidence weakens
  riskBudget:
    frequency: daily
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Buy Signal / Watch / Sell Signal / No Signal / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - 唐能通《短线是银》系列
  - A股技术分析经典教材
  - docs/reading-list.md
---

# Tang Nengtong Short-Term TA

短线技术分析的核心是量价关系。价涨量增是健康，价涨量缩是虚涨。均线系统是趋势的骨架。

## Philosophy

短线技术分析的核心是量价关系。价涨量增是健康，价涨量缩是虚涨。均线系统是趋势的骨架。

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, missing data, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **volumePriceAlignment** (high): Does volume confirm the price move?
- **maAlignment** (high): Are MAs aligned in the trend direction?
- **breakoutSignal** (high): Is there a clean breakout above resistance?
- **momentumStrength** (medium): Is short-term momentum accelerating?

## Filters

- **volumeConfirms** (required)
- **maAligned** (required)
- **breakoutValid** (required)
- **noVolumeConfirmation** (disqualifier)

## Analysis

1. Check volume-price relationship: is volume confirming the move?
2. Verify MA system alignment for trend direction.
3. Identify breakout level and whether it's valid.
4. Define entry, stop, and exit by technical rules.

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

- **Cadence**: daily.
- **Metrics**: Core evidence, risk budget, context.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Buy Signal / Watch / Sell Signal / No Signal / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Volume-price breakout**: price breaks above resistance on expanding volume = buy signal.
- **MA alignment long**: short MA above medium MA above long MA = trend confirmation.
- **Distribution signals**: high-volume rejection at highs = exit signal.

## Podcasts

- Shared podcast list: ../../docs/podcast-list.md

## YouTube

- 短线是银教学: https://www.youtube.com/results?search_query=短线是银+唐能通
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- 《短线是银》系列
- Shared reading list: ../../docs/reading-list.md

## Do's and Don'ts

- Do load this skill before free-styling opinions.
- Do demand evidence and invalidation.
- Do use readings/podcasts/videos as reference material.
- Don't confuse narrative with proof.
- Don't oversize or use unbounded leverage.
- Don't ignore model-specific context.

## Source Notes

This model is distilled from public materials associated with Tang Nengtong / 唐能通. Use primary sources when possible. This is a judgment framework, not financial advice.
