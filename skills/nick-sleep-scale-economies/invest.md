---
version: alpha
name: Nick Sleep Scale Economies Shared
slug: nick-sleep-scale-economies
aliases:
  - Nick Sleep
  - Nomad Investment Partnership
  - Scale Economies Shared
description: "Long-duration compounders, scale economies shared with customers, owner culture, low turnover, and customer-value flywheels"
investor: Nick Sleep / Qais Zakaria
style: quality+long-term+compounder
timeHorizon: 10+ years
decisionCadence: annual
assetClasses:
  - public equities
circleOfCompetence:
  - customer-value flywheels
  - scale economies shared
  - long-duration compounders
  - low-turnover ownership
universe:
  geographies:
    - global
  instruments:
    - stocks
  marketCap: mid-cap to large-cap
  liquidity: medium-high
  dataRequirements:
    - long-term financials
    - customer value metrics
    - management letters
    - unit economics
marketRegime:
  preferred: market underestimates duration of customer-value flywheel
  avoid: culture drift, extraction instead of sharing, valuation priced for perfection
  posture: patient, low-turnover
signals:
  quality:
    scaleEconomiesShared:
      weight: high
      frequency: annual
      source: pricing, margins, customer economics
      description: The business shares scale benefits with customers, strengthening the moat.
    customerFlywheel:
      weight: high
      frequency: annual
      source: retention, volume, price, user behavior
      description: Better value brings more customers, which creates more scale.
    ownerCulture:
      weight: high
      frequency: annual
      source: management letters and capital allocation
      description: Management optimizes for long-term customer and owner value.
    runwayDuration:
      weight: high
      frequency: annual
      source: market size and reinvestment opportunities
      description: Long runway matters more than near-term earnings maximization.
filters:
  scaleBenefitsExist: required
  benefitsSharedWithCustomers: required
  cultureLongTerm: required
  runwayLong: required
  extractionModel: disqualifier
  cultureDrift: disqualifier
sizing:
  maxPosition: concentrated long-duration owners
  maxPortfolio: few exceptional compounders
  convictionThreshold: very high
  scalingRule: buy patiently, add when flywheel strengthens or price dislocates
  turnover: very low
risk:
  stopLoss: thesis-based
  maxDrawdown: price volatility tolerated if flywheel intact
  correlationLimit: avoid all positions relying on same consumer/internet factor
  leverage: none
  positionCutRule: sell when customer value, culture, or runway breaks
metrics:
  customerValue:
    frequency: annual
    alert: company extracts too much and weakens value proposition
  reinvestmentRunway:
    frequency: annual
    alert: runway shrinks materially
  culture:
    frequency: annual
    alert: management optimizes short-term margin over long-term flywheel
playbooks:
  scaleEconomiesMemo:
    verdictOptions: Long-Term Own / Watch / Not Shared / Too Expensive / Pass
    requiredSections: sharedScale,flywheel,culture,runway,valuation,risks
sources:
  - docs/podcast-list.md
  - docs/reading-list.md
  - Nomad Investment Partnership letters
  - Nick Sleep and Qais Zakaria public materials
---

# Nick Sleep Scale Economies Shared

The Nick Sleep lens asks whether a company uses scale to lower costs and improve customer value, thereby increasing scale again. The best companies share scale economies instead of harvesting them too early.

## Philosophy

Great long-term businesses often look under-optimized in the short run because they reinvest scale benefits into customers. That sacrifice can widen the moat and extend the runway.

## Universe & Regime

- **Asset classes**: Public equities.
- **Universe**: Long-duration compounders with customer-value flywheels.
- **Preferred regime**: Market underestimates duration and reinvestment quality.
- **Avoid**: Culture drift, extraction model, no runway, valuation perfection.
- **Posture**: Patient, low-turnover ownership.

## Signals

- **Scale Economies Shared** (high): Cost savings go to customers, not only margins.
- **Customer Flywheel** (high): Better value -> more customers -> more scale -> better value.
- **Owner Culture** (high): Management thinks in decades.
- **Runway Duration** (high): Large reinvestment opportunity remains.

## Filters

- **Scale Benefits Exist** (required): Scale must improve economics.
- **Benefits Shared With Customers** (required): Sharing strengthens moat.
- **Culture Long-Term** (required): Management must resist short-term extraction.
- **Runway Long** (required): Need room to compound.
- **Extraction Model** (disqualifier): If management harvests too soon, moat may weaken.
- **Culture Drift** (disqualifier): Sell or reduce.

## Analysis

### 1. Identify Scale Economies

Where do costs fall or service improve as the company grows?

### 2. Check Whether Scale Is Shared

Lower prices, better service, selection, speed, or customer surplus.

### 3. Map The Flywheel

How does customer value create growth, and how does growth improve customer value?

### 4. Assess Culture And Runway

Does management protect the flywheel over short-term profit maximization?

## Position Sizing

- **Initial size**: Buy when flywheel and culture are clear at reasonable expectations.
- **Add rule**: Add on dislocation if flywheel strengthens.
- **Max size**: Concentrated for rare long-duration compounders.
- **Cash rule**: Wait when valuation implies perfection.

## Risk Management

- **Primary risk**: Culture drift or runway exhaustion.
- **Stop**: Thesis-based.
- **Correlation**: Avoid one business-model factor dominating.
- **Leverage**: None.

## Execution

### Entry Rules

1. Scale economies exist.
2. Benefits are shared with customers.
3. Culture is long-term.
4. Runway is long.
5. Valuation is not impossible.

### Exit Rules

1. Company stops sharing scale.
2. Culture shifts to extraction.
3. Flywheel breaks.
4. Valuation discounts impossible duration.

## Monitoring

- **Cadence**: Annual deep review, quarterly light check.
- **Metrics**: Customer value, pricing, retention, reinvestment, runway, culture.
- **Alerts**: Margin extraction at customer expense, slowing flywheel, management behavior change.

## Playbooks

### Scale Economies Memo

Return `Long-Term Own`, `Watch`, `Not Shared`, `Too Expensive`, or `Pass` with shared scale, flywheel, culture, runway, valuation, and risks.

## Canonical Cases

- **Amazon**: The defining shared-scale case: low prices, selection, convenience, more customers, more scale, more reinvestment.
- **Costco**: Shared purchasing power with customers creates loyalty, volume, and trust.
- **Berkshire / long-duration owner mindset**: Nomad letters emphasize patient ownership and avoiding unnecessary turnover.

Study these cases for customer surplus, flywheel durability, culture, and low-turnover compounding.

## Do's and Don'ts

- Do focus on customer value.
- Do judge culture.
- Do hold long when flywheel strengthens.
- Don't overtrade compounders.
- Don't mistake size for shared scale.
- Don't ignore valuation if expectations become impossible.




## Podcasts

- Shared podcast list with Spotify links: ../../docs/podcast-list.md

## Reading List

- Nomad letters archive: https://www.csinvesting.org/wp-content/uploads/2014/06/Nomad-Letters.pdf
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Nomad Investment Partnership letters and Nick Sleep/Qais Zakaria public materials.
