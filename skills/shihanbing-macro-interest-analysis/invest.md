---
version: alpha
name: Shi Hanbing Macro Interest Analysis
slug: shihanbing-macro-interest-analysis
aliases:
  - 时寒冰
  - Shi Hanbing
  - 利益分析法
  - Macro Interest Analysis
description: Macro interest analysis, incentive-based policy prediction, trend following from利益博弈, and macro regime identification
investor: Shi Hanbing / 时寒冰
style: macro+trend+policy
timeHorizon: months-years
decisionCadence: monthly
assetClasses:
  - public equities
  - bonds
  - commodities
  - real assets
  - multi-asset
circleOfCompetence:
  - interest-based policy analysis
  - macro trend prediction
  - incentive structure mapping
  - cross-asset macro positioning
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
    verdictOptions: "Risk-On Trend / Neutral / Risk-Off / Conflicting Interests / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - 时寒冰《时寒冰说》系列
  - 时寒冰博客/微博
  - docs/reading-list.md
---

# Shi Hanbing Macro Interest Analysis

利益分析法：任何政策背后都是利益博弈。看懂谁在推动、谁在受益、谁在承担成本，就能预判政策走向和大趋势。

## Philosophy

利益分析法：任何政策背后都是利益博弈。看懂谁在推动、谁在受益、谁在承担成本，就能预判政策走向和大趋势。

## Universe & Regime

- **Asset classes**: public equities, bonds, commodities, real assets, multi-asset.
- **Universe**: Opportunities inside this model's circle of competence.
- **Preferred regime**: Where the edge is active.
- **Avoid**: Outside competence, missing data, fatal structure.
- **Posture**: Evidence-first and risk-aware.

## Signals

- **interestAlignment** (high): Who benefits from this policy/action?
- **policyDirection** (high): Where are incentives pushing policy?
- **trendConfirmation** (medium): Does price/data confirm the interest-based prediction?
- **conflictLevel** (medium): Are interests aligned or conflicting?

## Filters

- **interestStructureMapped** (required)
- **policyDirectionClear** (required)
- **noInterestMap** (disqualifier)
- **conflictingInterestsWithoutResolution** (disqualifier)

## Analysis

1. Map the interest structure: who benefits, who pays, who decides.
2. Predict policy direction from incentive alignment.
3. Check if macro data/price confirms the interest-based prediction.
4. Position for the trend; stand aside if interests conflict without resolution.

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

Return one of: Risk-On Trend / Neutral / Risk-Off / Conflicting Interests / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Real estate policy cycles**: predicting policy direction by analyzing who benefits from easing vs tightening.
- **Currency and commodity trends**: following the money to anticipate macro shifts.
- **Interest-based crisis analysis**: understanding when policy incentives align toward rescue vs neglect.

## Podcasts

- Shared podcast list: ../../docs/podcast-list.md

## YouTube

- 时寒冰 analysis: https://www.youtube.com/results?search_query=时寒冰+经济
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- 《时寒冰说》系列
- 时寒冰博客: https://shihanbing.blogspot.com
- Shared reading list: ../../docs/reading-list.md

## Do's and Don'ts

- Do load this skill before free-styling opinions.
- Do demand evidence and invalidation.
- Do use readings/podcasts/videos as reference material.
- Don't confuse narrative with proof.
- Don't oversize or use unbounded leverage.
- Don't ignore model-specific context.

## Source Notes

This model is distilled from public materials associated with Shi Hanbing / 时寒冰. Use primary sources when possible. This is a judgment framework, not financial advice.
