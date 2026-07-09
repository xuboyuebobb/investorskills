---
version: alpha
name: Druckenmiller Macro
slug: druckenmiller
aliases:
  - Stanley Druckenmiller Macro
  - Concentrated Macro Risk
description: Top-down macro, liquidity regimes, dominant drivers, market confirmation, concentration, and quick loss cutting
investor: Stanley Druckenmiller
style: macro+momentum+trend-following
timeHorizon: days-months
decisionCadence: daily
assetClasses:
  - fx
  - rates
  - public equities
  - commodities
  - multi-asset
circleOfCompetence:
  - macro regimes
  - liquidity and central banks
  - currencies and rates
  - market-confirmed themes
universe:
  geographies:
    - global
  instruments:
    - currencies
    - rates
    - futures
    - indexes
    - liquid equities
  marketCap: not-applicable
  liquidity: high
  dataRequirements:
    - price trend
    - rates and currency data
    - central-bank policy
    - liquidity conditions
marketRegime:
  preferred: clear dominant driver with policy, liquidity, and price alignment
  avoid: no dominant factor, no confirmation, poor liquidity
  posture: concentrated only when exceptional
signals:
  macro:
    dominantDriver:
      weight: high
      frequency: daily
      source: macro analysis
      description: The trade should be explained by one main force.
    liquidityRegime:
      weight: high
      frequency: weekly
      source: central banks, credit, money, rates
      description: Liquidity and policy shape major asset trends.
    policyShift:
      weight: high
      frequency: event-driven
      source: central-bank and fiscal policy
      description: Major shifts can create cross-asset trends.
  technical:
    marketConfirmation:
      weight: high
      direction: trend-up
      frequency: daily
      source: price action
      description: Price should confirm the macro thesis.
    crossAssetConfirmation:
      weight: medium
      frequency: daily
      source: rates, FX, equities, commodities
      description: Related markets should support the thesis.
filters:
  dominantDriverClear: required
  liquiditySufficient: required
  marketConfirmation: required
  invalidationDefined: required
  mediocreSetup: disqualifier
sizing:
  maxPosition: concentrated when exceptional
  maxPortfolio: few major themes
  convictionThreshold: high
  scalingRule: press winners, cut losers, increase only with confirmation
  riskPerTrade: small until market confirms
risk:
  stopLoss: hard or thesis-based
  maxDrawdown: cut quickly when wrong
  correlationLimit: avoid duplicated macro beta
  leverage: limited and liquid only
  positionCutRule: reduce or exit when price action rejects the thesis
metrics:
  liquidityRegime:
    frequency: weekly
    alert: policy or liquidity reverses
  marketConfirmation:
    frequency: daily
    alert: price breaks thesis level
  crossAssetConfirmation:
    frequency: daily
    alert: related markets diverge
playbooks:
  macroTradeMemo:
    verdictOptions: Press / Probe / Hold / Cut / Pass
    requiredSections: dominantDriver,liquidity,confirmation,expression,sizing,invalidation
sources:
  - docs/reading-list.md
  - Stanley Druckenmiller public interviews and talks
  - Public commentary on Duquesne Capital macro process
  - George Soros and Druckenmiller macro trade case studies
---

# Druckenmiller Macro

Find the dominant driver, express it through liquid markets, concentrate when the setup is exceptional, and cut losses quickly when the market says the thesis is wrong.

## Philosophy

The edge is not having an opinion on everything. The edge is recognizing the few periods when macro, liquidity, policy, and price action align.

When wrong, cut quickly. When right and the setup improves, press.

## Universe & Regime

- **Asset classes**: FX, rates, equities, commodities, liquid macro instruments.
- **Universe**: Liquid markets where macro drivers and price confirmation are observable.
- **Preferred regime**: Clear policy or liquidity shift with cross-asset confirmation.
- **Avoid**: Mediocre setups, vague narratives, poor liquidity, conflicting markets.
- **Posture**: Concentrated only when the opportunity is exceptional.

## Signals

### Macro

- **Dominant Driver** (high, daily): One main force should explain the trade.
- **Liquidity Regime** (high, weekly): Central-bank and credit conditions should align.
- **Policy Shift** (high, event-driven): Major policy changes can reset asset prices.

### Market Confirmation

- **Price Confirmation** (high, daily): Price must confirm the thesis.
- **Cross-Asset Confirmation** (medium, daily): Related markets should tell the same story.

## Filters

- **Dominant Driver Clear** (required): Avoid unclear multi-factor noise.
- **Liquidity Sufficient** (required): The trade must be exit-ready.
- **Market Confirmation** (required): Do not fight the market indefinitely.
- **Invalidation Defined** (required): Know the exit before sizing.
- **Mediocre Setup** (disqualifier): Do not size up average ideas.

## Analysis

### 1. Identify The Dominant Driver

Is the trade about rates, liquidity, currency, policy, earnings, commodities, or risk appetite?

### 2. Check Policy And Liquidity

Does central-bank or credit behavior support the thesis?

### 3. Confirm With Markets

Do price action and related assets confirm, or is the thesis only a story?

### 4. Choose Expression

Pick the cleanest liquid instrument with asymmetric payoff and clear invalidation.

## Position Sizing

- **Initial size**: Probe if still testing.
- **Add rule**: Press winners when confirmation strengthens.
- **Max size**: Large only for rare, exceptional setups.
- **Cash rule**: Stay liquid between major opportunities.

## Risk Management

- **Primary risk**: Turning a wrong macro view into stubbornness.
- **Stop**: Price or thesis based.
- **Correlation**: Avoid the same macro view through too many instruments.
- **Leverage**: Limited and only in liquid markets.

## Execution

### Entry Rules

1. Dominant driver is clear.
2. Policy and liquidity support it.
3. Price confirms.
4. Invalidation is defined.

### Exit Rules

1. Price rejects thesis.
2. Policy/liquidity regime changes.
3. Cross-asset confirmation breaks.
4. Better macro opportunity appears.

## Monitoring

- **Cadence**: Daily price, weekly macro, event-driven policy.
- **Metrics**: Rates, FX, liquidity, cross-asset confirmation, trend breaks.
- **Alerts**: Policy surprise, trend break, thesis rejection.

## Playbooks

### Macro Trade Memo

Return `Press`, `Probe`, `Hold`, `Cut`, or `Pass` with dominant driver, liquidity, confirmation, expression, sizing, and invalidation.

## Canonical Cases

- **British pound short, 1992**: Druckenmiller is widely credited with identifying and pressing the scale of the sterling trade at Quantum. The lesson is concentration when macro reality, policy constraint, and price confirmation align.
- **Dollar weakness after the Plaza Accord, mid-1980s**: A classic macro regime-shift case: policy changed the dominant driver, and liquid currency markets provided the expression.
- **Liquidity-driven equity and bond regime shifts**: Druckenmiller repeatedly emphasizes central-bank liquidity and the dominant factor. Study major easing/tightening cycles as cases where liquidity, rates, currencies, and equities either confirm or reject the thesis.

Study these cases for dominant driver, liquidity regime, cross-asset confirmation, concentration, and fast loss cutting.

## Do's and Don'ts

- Do focus on the dominant driver.
- Do cut losses quickly.
- Do press exceptional winners.
- Don't concentrate in mediocre setups.
- Don't fight price action forever.
- Don't duplicate the same macro risk unknowingly.



## Reading List

- Druckenmiller speech archive: https://www.valuewalk.com/stanley-druckenmiller-speech/
- Market Wizards: https://www.amazon.com/Market-Wizards-Interviews-Top-Traders/dp/1118273052
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Druckenmiller's public interviews, talks, and widely discussed macro trade case studies. It should be treated as a process abstraction, not a claim about his current positioning.
