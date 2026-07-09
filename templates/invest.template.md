---
version: alpha
name: <Investor / Strategy Name>
slug: <stable-install-name>
aliases:
  - <display name>
description: <one-line description of the edge, behavior, and use case>
investor: <source investor or investors>
style: <value|growth|momentum|trend-following|breakout|macro|reflexivity|cycle|credit|quant|quality|mental-models|blend>
timeHorizon: <intraday|days|weeks|months|1-3 years|3-5 years|5-10 years|10+ years|forever>
decisionCadence: <intraday|daily|weekly|monthly|quarterly|annual|event-driven>
assetClasses:
  - <public equities|crypto|commodities|rates|credit|fx|prediction markets|multi-asset>
circleOfCompetence:
  - <domain, sector, instrument, or market type>
universe:
  geographies:
    - <region or market>
  sectors:
    - <sector or "any">
  instruments:
    - <stocks, futures, spot, options, funds, etc.>
  marketCap: <large-cap|mid-cap|small-cap|any|not-applicable>
  liquidity: <high|medium|low|required>
  dataRequirements:
    - <required data source or filing>
marketRegime:
  preferred: <conditions where the model works best>
  avoid: <conditions where the model should stand down>
  posture: <patient|aggressive|defensive|opportunistic|stand-down>
signals:
  <category>:
    <signalName>:
      weight: <high|medium|low>
      direction: <higher-is-better|lower-is-better|stable-is-better|trend-up|trend-down>
      threshold: <optional threshold>
      frequency: <intraday|daily|weekly|monthly|quarterly|annual|event-driven>
      source: <where to get the signal>
      description: <why this signal matters>
filters:
  <filterName>: <required|disqualifier|expression>
sizing:
  maxPosition: <percentage or rule>
  maxPortfolio: <number or rule>
  convictionThreshold: <high|medium|low>
  scalingRule: <how to start, add, trim, or pyramid>
risk:
  maxDrawdown: <percentage or rule>
  stopLoss: <none|hard|trailing|time-based|thesis-based>
  correlationLimit: <rule>
  leverage: <none|limited|allowed with rule>
metrics:
  <metricName>:
    frequency: <daily|weekly|monthly|quarterly|annual>
    alert: <reassessment trigger>
    description: <what this metric means>
playbooks:
  decisionMemo:
    verdictOptions: <Buy / Watchlist / Pass / Too Hard, or model-specific alternatives>
    requiredSections: <comma-separated section names>
sources:
  - <primary source book, letter, transcript, paper, or filing>
---

# <Investor / Strategy Name>

<One paragraph summary of the strategy, its edge, and the type of opportunity it is built to judge.>

## Philosophy

<State the worldview. What does this investor believe markets get wrong? What is the edge? What should the agent never forget when rules conflict?>

## Universe & Regime

- **Asset classes**: <what this model can evaluate>
- **Universe**: <geography, instruments, liquidity, size, data requirements>
- **Preferred regime**: <when this model should be most active>
- **Avoid**: <when the agent should stand down or switch models>
- **Posture**: <patient, aggressive, defensive, opportunistic, stand-down>

## Signals

### <Category>

- **<Signal>** (<weight>, <direction>, <frequency>): <what it measures, why it matters, threshold, and source.>

## Filters

These are hard gates. If any required filter fails, stop and classify as **Pass**, **Too Hard**, or the model-specific stand-down verdict.

- **<Filter>** (<required|disqualifier|expression>): <how to evaluate it and why it is a hard gate.>

## Analysis

### 1. <Step Name>

- <Question the agent must answer>
- <Data the agent must gather>
- <Decision implication>

### 2. <Step Name>

- <Repeat until the investment process is operational enough for two agents to reach similar conclusions.>

## Position Sizing

- **Initial size**: <starter position or no-trade rule>
- **Add rule**: <when and how to add>
- **Max size**: <single-position and portfolio-level limits>
- **Cash / reserve rule**: <if applicable>

## Risk Management

- **Primary risk**: <what usually makes this model wrong>
- **Stop / invalidation**: <price-based, thesis-based, time-based, or regime-based rule>
- **Correlation**: <how to avoid hidden concentration>
- **Leverage**: <allowed or forbidden>

## Execution

### Entry Rules

1. <Condition>
2. <Condition>
3. <Condition>

### Exit Rules

1. <Condition>
2. <Condition>
3. <Condition>

## Monitoring

- **Cadence**: <how often to review>
- **Metrics**: <what to track>
- **Alerts**: <what forces immediate reassessment>

## Playbooks

### Decision Memo

When evaluating a new opportunity, produce:

```md
# Decision Memo: [Asset]

## Verdict
[Buy / Watchlist / Pass / Too Hard / Stand Down / model-specific options]

## One-Line Thesis

## Regime Fit

## Signal Summary

## Filter Check

## Sizing

## Risk / Invalidation

## What To Monitor

## Missing Data
```

## Canonical Cases

- **<Case name>**: <successful investment or trade associated with the investor/model. Explain the setup, what the model saw, and the lesson to copy.>
- **<Case name>**: <another case. Keep this factual and avoid implying guaranteed repeatability.>

## Do's and Don'ts

- Do <behavior that preserves the edge>
- Do <behavior that improves judgment quality>
- Don't <common misuse of this investor model>
- Don't <behavior that violates the strategy>

## Podcasts

- <Recommended podcast with Spotify link>
- Shared podcast list: ../../docs/podcast-list.md

## YouTube

- <Recommended talk or channel with YouTube link>
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- <Primary essay, letter, memo, report, or book with link when available>
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- <Primary source>
- <Primary source>

When attributing a specific rule or quote, cite the exact source.
