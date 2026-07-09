---
version: alpha
name: Soros Reflexivity
slug: soros-reflexivity
aliases:
  - Reflexive Macro
  - Boom Bust Feedback Loops
description: Reflexivity, macro dislocations, feedback loops, and asymmetric risk windows
investor: George Soros
style: macro+reflexivity+contrarian
timeHorizon: days-months
decisionCadence: daily
assetClasses:
  - fx
  - rates
  - commodities
  - public equities
  - credit
  - multi-asset
circleOfCompetence:
  - macro dislocations
  - policy regimes
  - feedback loops
  - crowded positioning
universe:
  geographies:
    - global
  instruments:
    - currencies
    - rates
    - futures
    - ETFs
    - liquid equities
  marketCap: not-applicable
  liquidity: high
  dataRequirements:
    - price trend
    - positioning
    - policy context
    - macro data
marketRegime:
  preferred: unstable feedback loops and policy/market mismatch
  avoid: no catalyst, no asymmetry, no liquidity
  posture: probe, test, press when confirmed
signals:
  macro:
    policyMismatch:
      weight: high
      frequency: daily
      source: central banks, fiscal policy, regulation
      description: Policy may be inconsistent with market reality.
    macroDivergence:
      weight: high
      frequency: weekly
      source: economic data and prices
      description: Fundamentals and market beliefs diverge.
  sentiment:
    narrativeConsensus:
      weight: high
      frequency: daily
      source: news, analyst consensus, positioning
      description: Reflexive setups often begin with a dominant belief.
    crowding:
      weight: high
      frequency: daily
      source: positioning data and price behavior
      description: Crowded trades can unwind violently.
  technical:
    priceConfirmation:
      weight: high
      direction: trend-up
      frequency: daily
      source: market price
      description: Size increases only when the market confirms the thesis.
filters:
  feedbackLoopIdentified: required
  asymmetryClear: required
  liquidityHigh: required
  invalidationDefined: required
  noCatalyst: disqualifier
sizing:
  maxPosition: large only after confirmation
  maxPortfolio: concentrated macro risk allowed with strict invalidation
  convictionThreshold: high
  scalingRule: probe first, press only when thesis and price confirm
  riskPerTrade: small until confirmation
risk:
  stopLoss: thesis-and-price-based
  maxDrawdown: cut before thesis becomes hope
  correlationLimit: avoid duplicated macro exposure
  leverage: limited and only with liquid instruments
  positionCutRule: exit when feedback loop breaks or policy response invalidates thesis
metrics:
  priceConfirmation:
    frequency: daily
    alert: price rejects thesis
  policyResponse:
    frequency: event-driven
    alert: policy changes the feedback loop
  positioning:
    frequency: weekly
    alert: crowding unwinds or disappears
playbooks:
  reflexivityMemo:
    verdictOptions: Probe / Press / Hold / Exit / Pass
    requiredSections: bias,reality,feedbackLoop,asymmetry,tradeExpression,invalidation
sources:
  - docs/reading-list.md
  - George Soros, The Alchemy of Finance
  - George Soros, Soros on Soros
  - George Soros public lectures and interviews
---

# Soros Reflexivity

Markets do not merely reflect reality. Participant beliefs can change reality, and changed reality can reinforce or destroy those beliefs. The opportunity is in unstable feedback loops with asymmetric payoff.

## Philosophy

The goal is not to be broadly contrarian. The goal is to identify where perception and reality interact in a way that can accelerate a move.

Start small when uncertain. Press when the market confirms. Exit when the feedback loop breaks.

## Universe & Regime

- **Asset classes**: FX, rates, commodities, liquid equities, credit, multi-asset macro expressions.
- **Universe**: Liquid instruments with visible policy, positioning, and price data.
- **Preferred regime**: Policy mismatch, crowded consensus, unstable feedback loop.
- **Avoid**: No catalyst, no liquidity, no asymmetry, unclear invalidation.
- **Posture**: Probe, test, then press.

## Signals

### Macro And Reflexive

- **Policy Mismatch** (high, daily): Policy is inconsistent with market or economic reality.
- **Macro Divergence** (high, weekly): Data, prices, and consensus tell conflicting stories.
- **Narrative Consensus** (high, daily): A dominant belief shapes behavior.
- **Crowding** (high, daily): One-sided positioning creates squeeze or unwind risk.
- **Price Confirmation** (high, daily): Price must begin confirming the thesis before size increases.

## Filters

- **Feedback Loop Identified** (required): Show how belief changes behavior and behavior changes fundamentals or price.
- **Asymmetry Clear** (required): Upside if right must exceed loss if wrong.
- **Liquidity High** (required): The trade must be exit-ready.
- **Invalidation Defined** (required): Know what proves the thesis wrong.
- **No Catalyst** (disqualifier): Without a catalyst path, the setup can stay wrong too long.

## Analysis

### 1. Define Bias And Reality

What does the market believe? What is actually happening? How are they linked?

### 2. Map The Feedback Loop

Explain the loop between price, behavior, fundamentals, policy, and perception.

### 3. Test Asymmetry

What is the downside if wrong? What happens if the loop accelerates?

### 4. Select Trade Expression

Choose the cleanest liquid expression with defined invalidation.

## Position Sizing

- **Initial size**: Probe while the thesis is forming.
- **Add rule**: Press only after price and data confirm.
- **Max size**: Allowed only when asymmetry, liquidity, and confirmation are exceptional.
- **Cash rule**: Stand down when the loop is unclear.

## Risk Management

- **Primary risk**: Mistaking a narrative for a feedback loop.
- **Stop**: Price and thesis based.
- **Correlation**: Avoid the same macro bet in multiple wrappers.
- **Leverage**: Limited, liquid, and only with clear invalidation.

## Execution

### Entry Rules

1. Feedback loop is explicit.
2. Asymmetry is clear.
3. Instrument is liquid.
4. Invalidation is defined.

### Exit Rules

1. Feedback loop breaks.
2. Policy response changes the game.
3. Price rejects the thesis.
4. Crowding unwinds and asymmetry disappears.

## Monitoring

- **Cadence**: Daily prices and narrative, event-driven policy, weekly positioning.
- **Metrics**: Price confirmation, positioning, policy shifts, macro data, liquidity.
- **Alerts**: Thesis rejection, catalyst failure, policy surprise.

## Playbooks

### Reflexivity Memo

Return `Probe`, `Press`, `Hold`, `Exit`, or `Pass` with bias, reality, loop, asymmetry, trade expression, and invalidation.

## Canonical Cases

- **British pound short, 1992**: The iconic reflexivity case. The market belief that sterling could stay inside the ERM conflicted with economic and policy reality; speculative pressure forced the policy regime to break.
- **Plaza Accord dollar weakness, mid-1980s**: A macro case where policy coordination, currency valuation, and market positioning aligned to create a large directional currency move.
- **Yen weakness during Abenomics, 2012-2013**: A policy-regime case often associated with macro funds: aggressive monetary policy shifted expectations, currency behavior, equities, and global positioning in a reinforcing loop.

Study these cases for belief versus reality, policy constraints, feedback loops, liquid expression, and asymmetric payoff.

## Do's and Don'ts

- Do separate belief from reality.
- Do start small until confirmed.
- Do press only when the loop accelerates.
- Don't call every trend reflexive.
- Don't stay in after invalidation.
- Don't confuse contrarian with correct.



## Reading List

- The Alchemy of Finance: https://www.amazon.com/Alchemy-Finance-George-Soros/dp/0471445495
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Soros's writing on reflexivity and public commentary on macro speculation. Avoid treating it as a mechanical formula.
