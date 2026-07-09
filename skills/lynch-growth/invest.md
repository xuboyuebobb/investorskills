---
version: alpha
name: Lynch Growth
slug: lynch-growth
aliases:
  - Peter Lynch Growth
  - Invest In What You Know
description: "Understandable growth investing, stock classification, PEG discipline, balance sheet checks, and story monitoring"
investor: Peter Lynch
style: growth+value+consumer
timeHorizon: 1-5 years
decisionCadence: quarterly
assetClasses:
  - public equities
circleOfCompetence:
  - consumer observation
  - growth stocks
  - small and mid caps
  - turnarounds and cyclicals
universe:
  geographies:
    - developed markets
  instruments:
    - stocks
  marketCap: small-cap to large-cap
  liquidity: medium-high
  dataRequirements:
    - financial statements
    - store/product data
    - debt and cash flow data
marketRegime:
  preferred: underfollowed growth with improving fundamentals
  avoid: story stocks with no earnings path or excessive debt
  posture: curious, practical, evidence-based
signals:
  fundamental:
    earningsGrowth:
      weight: high
      direction: higher-is-better
      frequency: quarterly
      source: earnings reports
      description: Growth should show up in earnings and cash flow.
    pegRatio:
      weight: high
      direction: lower-is-better
      frequency: quarterly
      source: valuation and growth estimates
      description: Price should be reasonable relative to growth.
    balanceSheet:
      weight: high
      direction: stable-is-better
      frequency: quarterly
      source: financial statements
      description: Debt can kill turnarounds and cyclicals.
    storyImprovement:
      weight: high
      frequency: quarterly
      source: company metrics and field observation
      description: The original story should keep improving.
filters:
  understandableStory: required
  financialsConfirmStory: required
  balanceSheetAcceptable: required
  valuationReasonable: required
  pureHypeNoEarnings: disqualifier
sizing:
  maxPosition: diversified best ideas
  maxPortfolio: many names acceptable if each story is tracked
  convictionThreshold: medium-high
  scalingRule: add as story and earnings improve
  riskPerTrade: thesis-based
risk:
  stopLoss: story-based
  maxDrawdown: tolerate volatility if story intact
  correlationLimit: avoid all positions in one consumer cycle
  leverage: none
  positionCutRule: sell when story deteriorates, valuation gets silly, or balance sheet worsens
metrics:
  revenueGrowth:
    frequency: quarterly
    alert: growth decelerates below thesis
  earningsGrowth:
    frequency: quarterly
    alert: earnings fail to confirm story
  debt:
    frequency: quarterly
    alert: leverage rises dangerously
playbooks:
  lynchMemo:
    verdictOptions: Buy / Watchlist / Story Not Proven / Too Expensive / Pass
    requiredSections: category,story,growth,valuation,balanceSheet,risks,invalidation
sources:
  - docs/reading-list.md
  - Peter Lynch, One Up on Wall Street
  - Peter Lynch, Beating the Street
  - Fidelity Magellan public history
---

# Lynch Growth

Great ideas can start in everyday observation, but they only become investments after the story is confirmed by financials and bought at a reasonable price.

## Philosophy

Invest in what you can understand, not merely what you use. The edge is seeing a company early, then verifying growth, unit economics, balance sheet, and valuation before Wall Street fully appreciates the story.

## Universe & Regime

- **Asset classes**: Public equities.
- **Universe**: Understandable companies with observable products, growth, or turnaround evidence.
- **Preferred regime**: Underfollowed growth and improving fundamentals.
- **Avoid**: No earnings path, excessive leverage, fantasy TAM, stale story.
- **Posture**: Curious but financially disciplined.

## Signals

- **Earnings Growth** (high): The story must translate into earnings.
- **PEG Ratio** (high): Growth should not be wildly overpaid.
- **Balance Sheet** (high): Debt matters, especially in cyclicals and turnarounds.
- **Story Improvement** (high): Same-store sales, unit growth, margins, new markets, or turnaround milestones.

## Filters

- **Understandable Story** (required): Explain in plain language.
- **Financials Confirm Story** (required): Observation without numbers is not enough.
- **Balance Sheet Acceptable** (required): Avoid debt traps.
- **Valuation Reasonable** (required): Growth at any price is dangerous.
- **Pure Hype No Earnings** (disqualifier): Pass.

## Analysis

### 1. Classify The Stock

Slow grower, stalwart, fast grower, cyclical, turnaround, or asset play.

### 2. State The Story

What has to happen for the stock to work?

### 3. Verify The Numbers

Revenue, earnings, margins, debt, cash flow, and valuation.

### 4. Define Story Breaks

What data would prove the story is no longer improving?

## Position Sizing

- **Initial size**: Start when story and valuation align.
- **Add rule**: Add as evidence improves.
- **Max size**: Larger for stalwarts/fast growers with clean balance sheets.
- **Cash rule**: Wait when story is good but price is excessive.

## Risk Management

- **Primary risk**: Falling in love with a story after facts change.
- **Stop**: Story-based.
- **Correlation**: Avoid too many same-theme consumer/growth bets.
- **Leverage**: None.

## Execution

### Entry Rules

1. Story is understandable.
2. Financials confirm it.
3. Valuation is reasonable relative to growth.
4. Balance sheet is safe enough.

### Exit Rules

1. Story deteriorates.
2. Growth slows without valuation support.
3. Debt or dilution worsens.
4. Price discounts unrealistic future.

## Monitoring

- **Cadence**: Quarterly.
- **Metrics**: Sales, earnings, margins, unit growth, debt, PEG.
- **Alerts**: Story miss, accounting issue, debt spike, valuation blow-off.

## Playbooks

### Lynch Memo

Return `Buy`, `Watchlist`, `Story Not Proven`, `Too Expensive`, or `Pass` with category, story, growth, PEG, balance sheet, risks, and invalidation.

## Canonical Cases

- **Taco Bell**: A classic Lynch-style consumer growth case where simple observation and unit expansion translated into investment performance.
- **Dunkin' Donuts**: Familiar product, understandable growth, and repeat purchase behavior as a source of investable insight.
- **La Quinta Motor Inns**: A field-research example: observing customer behavior and business economics before broader recognition.
- **Chrysler turnaround**: A stock-category lesson: turnarounds require balance-sheet and milestone discipline.

Study these cases for stock classification, simple story, financial confirmation, and story monitoring.

## Do's and Don'ts

- Do start with understandable products.
- Do verify numbers.
- Do classify the stock type.
- Don't buy a story without earnings.
- Don't ignore debt.
- Don't overpay for excitement.



## Reading List

- One Up on Wall Street: https://www.amazon.com/One-Up-Wall-Street-Already/dp/0743200403
- Beating the Street: https://www.amazon.com/Beating-Street-Peter-Lynch/dp/0671891634
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Peter Lynch's books and Fidelity Magellan history.
