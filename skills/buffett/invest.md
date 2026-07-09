---
version: alpha
name: Buffett Value Compounder
slug: buffett
aliases:
  - Buffett Value Investing
  - Quality Compounder
description: Durable business ownership, owner earnings, moat, management quality, and margin of safety
investor: Warren Buffett
style: value+quality
timeHorizon: 5-10 years
decisionCadence: quarterly
assetClasses:
  - public equities
circleOfCompetence:
  - consumer brands
  - insurance
  - financial services
  - utilities
  - railroads
  - capital-light compounders
universe:
  geographies:
    - United States
    - developed markets
  instruments:
    - stocks
  marketCap: mid-cap to large-cap
  liquidity: medium-high
  dataRequirements:
    - 10-K
    - 10-Q
    - annual letters
    - proxy statements
marketRegime:
  preferred: any, if price is below conservative value
  avoid: speculative mania where quality is priced for perfection
  posture: patient
signals:
  fundamental:
    ownerEarnings:
      weight: high
      direction: higher-is-better
      frequency: quarterly
      source: cash flow statement
      description: Real cash generated for owners after maintenance capital needs.
    roic:
      weight: high
      direction: higher-is-better
      threshold: "> 15% preferred"
      frequency: annual
      source: financial statements
      description: High returns on capital indicate business quality.
    moatDurability:
      weight: high
      frequency: annual
      source: business analysis
      description: Competitive advantage should survive for many years.
    managementIntegrity:
      weight: high
      frequency: annual
      source: letters, proxy, capital allocation history
      description: Honest and rational managers protect owner value.
  valuation:
    marginOfSafety:
      weight: high
      direction: higher-is-better
      threshold: "> 30% discount to conservative value preferred"
      frequency: event-driven
      source: valuation model
      description: Price must protect against analytical error.
filters:
  understandable: required
  durableMoat: required
  consistentOwnerEarnings: required
  managementIntegrity: required
  marginOfSafety: required
  heavyLeverage: disqualifier
sizing:
  maxPosition: "25%"
  maxPortfolio: 10-15 core positions
  convictionThreshold: high
  scalingRule: start partial, add when thesis strengthens and price remains attractive
  cashReserve: opportunistic
risk:
  marginOfSafety: "30% preferred"
  stopLoss: thesis-based
  maxDrawdown: price drawdown tolerated if thesis intact
  leverage: none
  positionCutRule: sell when thesis breaks or valuation becomes extreme
metrics:
  ownerEarnings:
    frequency: quarterly
    alert: cash conversion deteriorates
  roic:
    frequency: annual
    alert: sustained decline below quality threshold
  debt:
    frequency: quarterly
    alert: leverage threatens durability
playbooks:
  investmentMemo:
    verdictOptions: Buy / Watchlist / Pass / Too Hard
    requiredSections: business,moat,management,valuation,marginOfSafety,risk,invalidation
sources:
  - docs/youtube-list.md
  - docs/podcast-list.md
  - docs/reading-list.md
  - Warren Buffett shareholder letters
  - Berkshire Hathaway annual meeting transcripts
  - Benjamin Graham, The Intelligent Investor
---

# Buffett Value Compounder

A stock is fractional ownership in a business. The goal is to buy understandable, durable businesses run by honest managers at prices below conservative intrinsic value.

## Philosophy

The right question is: would we be comfortable owning the whole business at this price? Markets often misprice quality during fear, boredom, complexity, or short-term disappointment.

Patience is part of the edge. If no business clears the bar, hold cash and wait.

## Universe & Regime

- **Asset classes**: Public equities.
- **Universe**: Understandable companies with enough operating history and primary filings.
- **Preferred regime**: Any regime if value is attractive. Best opportunities often appear during fear.
- **Avoid**: Fragile leverage, opaque accounting, commodity speculation, fads.
- **Posture**: Patient and concentrated.

## Signals

### Fundamental

- **Owner Earnings** (high, quarterly): Net income adjusted for real cash generation and maintenance capex.
- **ROIC** (high, annual): Persistent high returns show quality and reinvestment potential.
- **Moat Durability** (high, annual): Brand, switching costs, network effects, cost advantage, regulation, or distribution.
- **Management Integrity** (high, annual): Rational capital allocation and honest communication.

### Valuation

- **Margin Of Safety** (high, event-driven): Buy only when conservative value exceeds price by a meaningful margin.

## Filters

- **Understandable** (required): If the business cannot be explained simply, classify as `Too Hard`.
- **Durable Moat** (required): Advantage must plausibly endure.
- **Consistent Owner Earnings** (required): Reported earnings should convert to cash.
- **Management Integrity** (required): Avoid bad incentives and promotional behavior.
- **Heavy Leverage** (disqualifier): Debt can turn volatility into permanent loss.

## Analysis

### 1. Define The Business

What does it sell, who pays, why customers choose it, and what drives unit economics?

### 2. Judge Business Quality

Assess moat, durability, returns, reinvestment runway, pricing power, and cash conversion.

### 3. Review Management

Evaluate incentives, communication, buybacks, acquisitions, debt use, and per-share value creation.

### 4. Estimate Intrinsic Value

Use conservative owner earnings or free cash flow. Output conservative, base, and optimistic ranges.

## Position Sizing

- **Initial size**: Partial position when quality and margin of safety are clear.
- **Add rule**: Add when thesis strengthens or price improves.
- **Max size**: Up to 25% for exceptional quality and value.
- **Cash rule**: Cash is acceptable when opportunity cost is poor.

## Risk Management

- **Primary risk**: Overpaying for quality or misjudging moat durability.
- **Stop**: Thesis-based, not price-based.
- **Correlation**: Avoid hidden exposure to the same economic driver.
- **Leverage**: None.

## Execution

### Entry Rules

1. Business is understandable.
2. Moat and economics are durable.
3. Management is trustworthy.
4. Price is below conservative intrinsic value.

### Exit Rules

1. Thesis breaks.
2. Management loses credibility.
3. Economics deteriorate structurally.
4. Valuation becomes extreme relative to value.

## Monitoring

- **Cadence**: Quarterly results and annual deep review.
- **Metrics**: Owner earnings, ROIC, margins, debt, share count, capital allocation.
- **Alerts**: Accounting issue, leverage spike, moat erosion, management change.

## Playbooks

### Investment Memo

Return `Buy`, `Watchlist`, `Pass`, or `Too Hard` with business quality, management, valuation, risks, and invalidation triggers.

## Canonical Cases

- **American Express, 1964**: Buffett bought when the Salad Oil scandal created temporary fear around a still-durable franchise. The lesson is separating temporary headline damage from permanent business impairment.
- **GEICO, 1976**: A distressed-but-understandable franchise where underwriting problems obscured long-term brand, distribution, and cost advantages. The lesson is buying quality when fixable distress creates a margin of safety.
- **Coca-Cola, 1988**: A durable global brand with pricing power, distribution scale, and long reinvestment runway. The lesson is paying a fair price for a compounding business rather than only buying statistically cheap assets.

Study these cases for moat durability, owner earnings, management quality, and price versus conservative intrinsic value.

## Do's and Don'ts

- Do use primary sources.
- Do value with ranges.
- Do admit `Too Hard`.
- Don't confuse cheap with good.
- Don't sell only because price falls.
- Don't use leverage.




## Podcasts

- Invest Like the Best: https://open.spotify.com/search/Invest%20Like%20the%20Best/shows
- We Study Billionaires: https://open.spotify.com/search/We%20Study%20Billionaires/shows
- Acquired: https://open.spotify.com/search/Acquired%20podcast/shows
- Shared podcast list: ../../docs/podcast-list.md


## YouTube

- Berkshire annual meetings: https://www.youtube.com/results?search_query=Berkshire+Hathaway+Annual+Meeting
- Shared YouTube list: ../../docs/youtube-list.md

## Reading List

- Berkshire letters: https://www.berkshirehathaway.com/letters/letters.html
- Superinvestors essay: https://www8.gsb.columbia.edu/articles/columbia-business/superinvestors
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Buffett shareholder letters, Berkshire annual meeting transcripts, and Graham's margin-of-safety principles.
