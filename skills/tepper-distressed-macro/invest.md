---
version: alpha
name: Tepper Distressed Macro
slug: tepper-distressed-macro
aliases:
  - David Tepper
  - Appaloosa Distressed Macro
description: "Crisis assets, distressed capital structures, policy backstops, bank stress, and asymmetric recovery trades"
investor: David Tepper
style: distressed+macro+event
timeHorizon: months-years
decisionCadence: event-driven
assetClasses:
  - public equities
  - credit
  - preferreds
  - distressed assets
circleOfCompetence:
  - distressed debt
  - bank stress
  - policy backstops
  - capital structure
  - crisis recovery trades
universe:
  geographies:
    - developed markets
  instruments:
    - bonds
    - preferred stock
    - common equity
    - distressed claims
  liquidity: medium-high
  dataRequirements:
    - capital structure
    - regulatory policy
    - balance sheet
    - stress-test data
marketRegime:
  preferred: panic with improving survival odds and policy support
  avoid: insolvency with no backstop or equity fully impaired
  posture: aggressive when survival and recovery are mispriced
signals:
  crisis:
    forcedSelling:
      weight: high
      frequency: event-driven
      source: credit and equity markets
      description: Panic selling creates recovery asymmetry.
    policyBackstop:
      weight: high
      frequency: event-driven
      source: central bank, Treasury, regulator actions
      description: Policy support can change survival odds.
    fulcrumSecurity:
      weight: high
      frequency: event-driven
      source: capital structure
      description: Find the security with best risk/reward in recovery.
    recoveryValue:
      weight: high
      frequency: event-driven
      source: normalized earnings and asset value
      description: Price must be low versus realistic recovery value.
filters:
  survivalOddsImproving: required
  capitalStructureMapped: required
  recoveryValueAttractive: required
  policyOrLiquiditySupport: required
  commonEquityImpaired: disqualifier
  noBackstop: disqualifier
sizing:
  maxPosition: aggressive only when survival odds and price align
  maxPortfolio: concentrated crisis basket with hedges
  convictionThreshold: high
  scalingRule: add as policy and market validation improve
  riskPerTrade: downside if restructuring wipes security
risk:
  stopLoss: thesis-and-policy-based
  maxDrawdown: high volatility expected, but impairment not tolerated
  correlationLimit: avoid one crisis factor across all positions
  leverage: avoid unless security seniority is strong
  positionCutRule: exit if survival odds, policy support, or recovery value deteriorate
metrics:
  policySupport:
    frequency: event-driven
    alert: backstop withdrawn or terms hurt security
  capitalRatios:
    frequency: quarterly
    alert: solvency worsens
  creditSpreads:
    frequency: weekly
    alert: stress worsens without compensation
playbooks:
  distressedMacroMemo:
    verdictOptions: Aggressive Buy / Probe / Wait / Avoid / Short
    requiredSections: panic,capitalStructure,backstop,recoveryValue,downside,catalyst
sources:
  - Public David Tepper and Appaloosa interviews
  - Public case studies of Appaloosa crisis investing
---

# Tepper Distressed Macro

The Tepper lens looks for panic-priced assets where survival odds are improving faster than market prices reflect. The question is not simply whether things are bad; it is whether the security is priced for worse than realistic recovery.

## Philosophy

In crisis, price can imply disaster while policy, liquidity, and capital structure begin to imply survival. The edge is buying the right security in the structure before fear clears.

## Universe & Regime

- **Asset classes**: Distressed debt, preferreds, common equity, crisis assets.
- **Universe**: Financials, cyclicals, credit, and distressed securities where capital structure can be mapped.
- **Preferred regime**: Panic plus policy backstop or improving survival odds.
- **Avoid**: Insolvency with no backstop, common equity impairment, unclear seniority.
- **Posture**: Aggressive when recovery is mispriced.

## Signals

- **Forced Selling** (high): Panic and deleveraging create mispricing.
- **Policy Backstop** (high): Government/central-bank action can change outcomes.
- **Fulcrum Security** (high): The best instrument may be preferreds/debt, not common.
- **Recovery Value** (high): Normalized value must justify risk.

## Filters

- **Survival Odds Improving** (required): Bad is not enough; odds must improve.
- **Capital Structure Mapped** (required): Know what you own.
- **Recovery Value Attractive** (required): Upside must compensate for distress.
- **Policy Or Liquidity Support** (required): Backstop matters.
- **Common Equity Impaired** (disqualifier): If recovery goes to debt, avoid common.
- **No Backstop** (disqualifier): Panic can become bankruptcy.

## Analysis

### 1. Map Panic

What forced sellers or market fears are depressing price?

### 2. Map Capital Structure

Debt, preferred, common, converts, maturity wall, covenants, and regulator claims.

### 3. Assess Policy Backstop

Does policy improve liquidity, capital, or confidence? Who benefits?

### 4. Estimate Recovery Value

Normalize earnings/assets and compare to current security price.

## Position Sizing

- **Initial size**: Probe when policy path is emerging.
- **Add rule**: Add as survival odds and market validation improve.
- **Max size**: Large only when security seniority and policy support protect downside.
- **Cash rule**: Wait when structure is unclear.

## Risk Management

- **Primary risk**: Buying the wrong layer of the capital structure.
- **Stop**: Thesis/policy based.
- **Correlation**: Avoid all positions depending on one rescue.
- **Leverage**: Avoid unless downside is explicitly controlled.

## Execution

### Entry Rules

1. Panic creates forced price.
2. Survival odds are improving.
3. Right security identified.
4. Recovery value is attractive.

### Exit Rules

1. Backstop fails or hurts your security.
2. Recovery value impaired.
3. Better layer of structure exists.
4. Price discounts recovery.

## Monitoring

- **Cadence**: Event-driven, weekly spreads, quarterly balance sheet.
- **Metrics**: Capital ratios, policy, spreads, liquidity, dilution, credit ratings.
- **Alerts**: Bail-in risk, dilution, failed stress test, policy reversal.

## Playbooks

### Distressed Macro Memo

Return `Aggressive Buy`, `Probe`, `Wait`, `Avoid`, or `Short` with panic source, capital structure, policy backstop, recovery value, downside, and catalyst.

## Canonical Cases

- **US bank preferred/common purchases, 2009**: Tepper's iconic crisis trade: markets priced disaster while policy support and stress-test dynamics improved survival odds for major banks.
- **Post-crisis credit recovery trades**: Distressed debt and credit instruments where panic selling offered asymmetric recovery.
- **Don't fight the Fed / liquidity recovery setups**: Tepper-style macro recognizes when policy liquidity changes the risk/reward of beaten-down assets.

Study these cases for capital structure, policy support, panic price, and recovery asymmetry.

## Do's and Don'ts

- Do identify the fulcrum security.
- Do track policy details.
- Do buy panic only when survival odds improve.
- Don't assume common equity survives.
- Don't ignore dilution.
- Don't buy distress with no backstop.

## Source Notes

This model is distilled from public Tepper/Appaloosa interviews and widely discussed crisis investing case studies.
