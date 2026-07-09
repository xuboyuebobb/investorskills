---
version: alpha
name: Klarman Deep Value
slug: klarman-deep-value
aliases:
  - Baupost Deep Value
  - Margin Of Safety Deep Value
description: "Deep value, distressed assets, forced sellers, illiquidity discounts, conservative value, and downside protection"
investor: Seth Klarman
style: value+distressed+contrarian
timeHorizon: 1-5 years
decisionCadence: event-driven
assetClasses:
  - public equities
  - credit
  - distressed assets
  - real assets
circleOfCompetence:
  - distressed securities
  - liquidation value
  - complex value
  - forced selling
universe:
  geographies:
    - developed markets
  instruments:
    - stocks
    - bonds
    - claims
    - closed-end funds
    - distressed assets
  liquidity: low-high
  dataRequirements:
    - financial statements
    - asset appraisal
    - legal and capital-structure docs
marketRegime:
  preferred: panic, forced selling, illiquidity discounts, neglected complexity
  avoid: no margin of safety, value traps, impaired assets with no catalyst
  posture: patient, downside-first
signals:
  value:
    marginOfSafety:
      weight: high
      direction: higher-is-better
      frequency: event-driven
      source: conservative value estimate
      description: Price must be far below conservative value.
    forcedSelling:
      weight: high
      frequency: event-driven
      source: flows, index deletions, bankruptcy, liquidation
      description: Non-economic selling can create mispricing.
    downsideProtection:
      weight: high
      frequency: event-driven
      source: assets, seniority, cash, collateral
      description: First protect against permanent loss.
    catalystOptionality:
      weight: medium
      frequency: event-driven
      source: restructuring, liquidation, tender, sale
      description: Catalyst helps, but value and safety come first.
filters:
  conservativeValueAbovePrice: required
  marginOfSafetyLarge: required
  downsideProtected: required
  assetQualityVerifiable: required
  valueTrap: disqualifier
  leverageFatal: disqualifier
sizing:
  maxPosition: margin-of-safety adjusted
  maxPortfolio: diversified across uncorrelated bargains
  convictionThreshold: high
  scalingRule: buy when discount widens and facts are intact
  cashReserve: high when bargains are scarce
risk:
  stopLoss: thesis-and-value-based
  maxDrawdown: tolerate illiquidity only if value intact
  correlationLimit: avoid one economic stress factor
  leverage: avoid
  positionCutRule: exit when value is impaired or margin of safety disappears
metrics:
  assetValue:
    frequency: quarterly
    alert: asset value impaired
  liquidity:
    frequency: monthly
    alert: liquidity needed before catalyst
  leverage:
    frequency: quarterly
    alert: debt threatens recovery
playbooks:
  deepValueMemo:
    verdictOptions: Buy / Watchlist / Too Little Safety / Value Trap / Pass
    requiredSections: value,discount,mispricing,downside,catalyst,risks
sources:
  - docs/reading-list.md
  - Seth Klarman, Margin of Safety
  - Baupost public letters and interviews
---

# Klarman Deep Value

The Klarman lens starts with what can go wrong. Buy only when conservative value, downside protection, and mispricing source create a large margin of safety.

## Philosophy

Risk is not volatility; risk is permanent loss. Investors earn excess returns by providing liquidity, patience, and analysis when others are forced to sell or unwilling to understand complexity.

## Universe & Regime

- **Asset classes**: Equities, credit, distressed assets, real assets.
- **Universe**: Verifiable value with complexity, neglect, or forced sellers.
- **Preferred regime**: Panic, illiquidity, distressed selling.
- **Avoid**: Value traps, unknowable assets, fatal leverage.
- **Posture**: Patient and downside-first.

## Signals

- **Margin Of Safety** (high): Large discount to conservative value.
- **Forced Selling** (high): Mispricing caused by non-economic seller behavior.
- **Downside Protection** (high): Assets, collateral, cash, seniority, or liquidation value.
- **Catalyst Optionality** (medium): Helpful but not a substitute for value.

## Filters

- **Conservative Value Above Price** (required): Use low assumptions.
- **Large Margin Of Safety** (required): Small discounts are not enough.
- **Downside Protected** (required): Avoid permanent impairment.
- **Asset Quality Verifiable** (required): No mystery marks.
- **Value Trap** (disqualifier): Cheap but deteriorating.
- **Fatal Leverage** (disqualifier): Debt can destroy recovery value.

## Analysis

### 1. Estimate Conservative Value

Use liquidation, asset, earnings, or sum-of-parts value with haircuts.

### 2. Identify Mispricing Source

Forced selling, complexity, illiquidity, neglect, index deletion, or distress.

### 3. Underwrite Downside

What is the recovery value if things go badly?

### 4. Evaluate Catalyst And Patience

What can close the gap, and can the portfolio wait?

## Position Sizing

- **Initial size**: Based on downside protection and liquidity.
- **Add rule**: Add when discount widens without value impairment.
- **Max size**: Higher for safe, liquid, independently valued assets.
- **Cash rule**: Cash is valuable when bargains are absent.

## Risk Management

- **Primary risk**: Value impairment masked as cheapness.
- **Stop**: Value/thesis based.
- **Correlation**: Avoid one crisis factor.
- **Leverage**: Avoid.

## Execution

### Entry Rules

1. Conservative value is well above price.
2. Mispricing source is identifiable.
3. Downside is protected.
4. Leverage and liquidity are survivable.

### Exit Rules

1. Value is impaired.
2. Margin of safety disappears.
3. Catalyst fails and opportunity cost rises.
4. Better bargain appears.

## Monitoring

- **Cadence**: Event-driven and quarterly.
- **Metrics**: Asset value, leverage, cash burn, legal progress, liquidity.
- **Alerts**: Debt stress, asset impairment, adverse restructuring.

## Playbooks

### Deep Value Memo

Return `Buy`, `Watchlist`, `Too Little Safety`, `Value Trap`, or `Pass` with conservative value, discount, mispricing source, downside, catalyst, and risks.

## Canonical Cases

- **Baupost distressed and post-crisis credit purchases**: Buying when forced sellers and panic created discounts to conservative recovery value.
- **Complex/illiquid securities**: Baupost's repeated edge has been willingness to analyze securities too small, illiquid, or messy for institutions.
- **Cash as option value**: Klarman's willingness to hold cash when bargains are scarce is itself a case in patience and opportunity cost.

Study these cases for margin of safety, forced selling, illiquidity discount, and downside-first underwriting.

## Do's and Don'ts

- Do value conservatively.
- Do demand downside protection.
- Do hold cash when nothing is cheap.
- Don't confuse cheap with safe.
- Don't ignore leverage.
- Don't force catalysts.



## Reading List

- Margin of Safety: https://www.amazon.com/Margin-Safety-Risk-Averse-Strategies-Thoughtful/dp/0887305105
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Klarman's `Margin of Safety`, Baupost public commentary, and public deep-value investing history.
