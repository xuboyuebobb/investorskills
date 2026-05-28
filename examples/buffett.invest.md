---
version: alpha
name: Buffett/Munger Value Investing
description: Long-term ownership of durable businesses bought below intrinsic value
investor: Warren Buffett, Charlie Munger, Benjamin Graham
style: value+quality
timeHorizon: 5-10 years
circleOfCompetence:
  - consumer brands
  - insurance
  - financial services
  - utilities
  - railroads
  - energy
signals:
  fundamental:
    ownerEarnings:
      weight: high
      description: Net income + D&A - maintenance capex
      source: 10-K cash flow statement
    roic:
      weight: high
      direction: higher-is-better
      threshold: "> 15%"
      source: income statement + balance sheet
    grossMargin:
      weight: medium
      direction: stable-or-expanding
      source: income statement
    fcfYield:
      weight: high
      direction: higher-is-better
      threshold: "> 5%"
    revenueGrowth:
      weight: medium
      direction: trend-up
    debtToEquity:
      weight: medium
      direction: lower-is-better
      threshold: "< 0.5"
  valuation:
    priceToOwnerEarnings:
      weight: high
      direction: lower-is-better
      threshold: "< 15x"
    priceToBook:
      weight: low
      threshold: "< 1.5x"
      description: Only relevant for asset-heavy businesses
    evToEbitda:
      weight: medium
      direction: lower-is-better
  sentiment:
    insiderBuying:
      weight: medium
      source: SEC Form 4
      description: Insiders buying with own money signals conviction
filters:
  understandable: required
  durableMoat: required
  consistentFCF: required
  debtToEquity: "< 0.5"
  managementIntegrity: required
  minOperatingHistory: "10 years"
sizing:
  maxPosition: 25%
  maxPortfolio: 15
  convictionThreshold: high
  scalingRule: half-then-add
  cashReserve: 10%
risk:
  marginOfSafety: 30%
  maxDrawdown: 50%
  stopLoss: none
  maxCorrelatedPositions: 3
  leverage: none
metrics:
  revenueGrowth:
    frequency: quarterly
    alert: "< -10% single quarter for non-cyclical"
  grossMargin:
    frequency: quarterly
    alert: "compress > 500bps YoY"
  freeCashFlow:
    frequency: quarterly
  roic:
    frequency: annual
    alert: "< 12% sustained"
  shareCount:
    frequency: quarterly
    alert: "> 3% annual dilution"
  debtMaturity:
    frequency: annual
playbooks:
  investmentMemo:
    verdictOptions: "Buy / Watchlist / Pass / Too Hard"
    requiredSections: "business,quality,management,valuation,risk,invalidation"
  holdingReview:
    verdictOptions: "Add / Hold / Trim / Sell"
    frequency: quarterly
---

# Buffett/Munger Value Investing

A stock is fractional ownership in a business. Buy durable businesses at fair prices, hold them forever, and let compounding do the work.

## Philosophy

The right question is: would I be comfortable owning the whole business at this price, given its economics, durability, people, and downside risk?

We believe markets are mostly efficient but occasionally misprice durable businesses during periods of fear, complexity, or boredom. Our edge is patience: we can hold forever, which most investors cannot and will not.

We stay inside our circle of competence. We prefer boring durability over exciting fragility. We would rather own a few great businesses deeply understood than many mediocre ones superficially covered.

It is better to be approximately right than precisely wrong. We use ranges, not false precision. We demand a margin of safety because we know our estimates will be wrong sometimes.

## Signals

### Fundamental

- **Owner Earnings** (high weight): Net income + depreciation & amortization - maintenance capital expenditure. This is the real cash the business generates for its owner, stripping away accounting noise. We want businesses that produce growing owner earnings over decades. Source: 10-K cash flow statement and footnotes.

- **ROIC** (high weight, higher-is-better): Return on invested capital measures how efficiently the business turns capital into profit. We look for sustained ROIC above 15% over 5+ years. A business that can reinvest at high returns is a compounding machine. Source: calculated from NOPAT / invested capital.

- **Gross Margin** (medium weight, stable-or-expanding): Stable or expanding gross margins indicate pricing power and competitive position. Declining gross margins are an early warning signal. Source: income statement.

- **FCF Yield** (high weight, higher-is-better): Free cash flow per share divided by price. Above 5% is attractive for a quality business. This is the real yield the business pays its owner. Source: cash flow statement.

- **Revenue Growth** (medium weight, trend-up): We prefer steady, organic revenue growth. We are suspicious of growth from acquisitions. Source: income statement, segment disclosures.

- **Debt to Equity** (medium weight, lower-is-better): Below 0.5 for most businesses. We avoid businesses that need heavy leverage to generate returns. Insurance and utilities get more slack due to their business model. Source: balance sheet.

### Valuation

- **Price to Owner Earnings** (high weight, lower-is-better): Below 15x is attractive for a quality business. Above 25x requires extraordinary growth to justify. Source: calculated.

- **Price to Book** (low weight): Only relevant for asset-heavy businesses like banks, insurance, and industrials. Below 1.5x is attractive. Irrelevant for software and consumer brands. Source: balance sheet.

- **EV/EBITDA** (medium weight, lower-is-better): Enterprise value to EBITDA. Useful for comparing businesses with different capital structures. Source: market data + income statement.

### Sentiment

- **Insider Buying** (medium weight): When insiders buy with their own money on the open market, it signals genuine conviction. We track Form 4 filings. Cluster buys by multiple insiders are more meaningful than single purchases. Source: SEC EDGAR.

## Filters

These are hard gates. If any required filter fails, stop and classify as **Pass** or **Too Hard**. Do not proceed to analysis.

- **Understandable** (required): Can we explain the business model, revenue drivers, and competitive position in one paragraph? If not, it is outside our circle of competence. We do not invest in what we do not understand.

- **Durable Moat** (required): Does the business have a structural competitive advantage that will still matter in 10 years? Acceptable moats: network effects, switching costs, brand loyalty, cost advantage, regulatory position, distribution dominance. "First mover" is not a moat.

- **Consistent FCF** (required): Has the business generated positive free cash flow in at least 8 of the last 10 years? Cyclical businesses get evaluated on through-cycle FCF.

- **Debt to Equity < 0.5** (required): We avoid businesses that require heavy leverage to generate returns. Exceptions for financials with strong regulatory oversight.

- **Management Integrity** (required): Has management been honest with shareholders? Red flags: accounting restatements, broken guidance promises, excessive stock-based compensation (> 5% dilution), related-party transactions, serial acquirers with "adjusted" earnings.

- **10-Year Operating History** (required): We need enough data to evaluate the business through at least one cycle. IPOs and SPACs are too hard.

## Analysis

### 1. Define The Business

Answer these questions:

- What does the company actually sell?
- Who pays and why do they choose it over alternatives?
- What drives revenue volume vs. price?
- What drives gross margin and operating margin?
- What are the key unit economics?
- Is this inside our circle of competence?

If the business cannot be explained simply, stop and mark as **Too Hard**.

### 2. Judge Business Quality

Score the business on six dimensions:

- **Moat**: What is the structural competitive advantage? Network effects, switching costs, brand, cost advantage, regulatory position, distribution, data, habit, scale?
- **Durability**: How likely is the moat to still matter in 5-10 years? What could destroy it?
- **Returns**: Can the business earn high returns on incremental capital? What is the trajectory?
- **Reinvestment**: Can the business deploy more capital at attractive returns? How large is the reinvestment runway?
- **Cash Conversion**: Do accounting earnings turn into real free cash flow? What is the capex intensity?
- **Pricing Power**: Can the business raise prices without losing customers? When was the last price increase?

Prefer boring durability over exciting fragility.

### 3. Review Management And Capital Allocation

Evaluate:

- Are incentives aligned with long-term owners? (Insider ownership, compensation structure)
- Has management issued shares cheaply or bought shares intelligently?
- Are acquisitions disciplined or empire-building?
- Does management communicate clearly and admit mistakes?
- Is debt used conservatively?
- Does capital allocation improve per-share intrinsic value?

Bad capital allocation can ruin a good business. Good capital allocation can make a good business great.

### 4. Estimate Conservative Intrinsic Value

Use simple valuation before complex valuation.

Build at least one conservative view:

- Normalized owner earnings or free cash flow (use 5-year average, not peak)
- Conservative growth rate (below management guidance, below analyst consensus)
- Terminal multiple (15-20x owner earnings for quality businesses)
- Subtract net debt, add excess cash
- Adjust for share count

Output a range, not a point estimate:

- **Conservative value**: worst reasonable assumptions
- **Base value**: middle-of-the-road assumptions
- **Optimistic value**: best reasonable assumptions
- **Key assumptions**: what drives the range

### 5. Demand Margin Of Safety

Compare current price to conservative value.

- **Buy candidate**: price is clearly below conservative value (30%+ discount) and business quality is high
- **Watchlist**: business is good but price is not attractive enough yet
- **Pass**: weak business, unclear economics, bad management, or no margin of safety at any reasonable price
- **Too hard**: outside circle of competence or missing critical data

## Position Sizing

- **Maximum single position**: 25% of portfolio at cost. We are concentrated but not reckless.
- **Target portfolio**: 10-15 positions. We would rather deeply understand 12 businesses than superficially cover 50.
- **Conviction threshold**: Only buy when conviction is high. No speculative "let's see" positions.
- **Scaling**: Start with a half position (12.5%). Add to full size only if the thesis strengthens over 1-2 quarters and the price remains attractive.
- **Cash reserve**: Always hold at least 10% cash for opportunities during market dislocations. Cash is a position, not a failure.

## Risk Management

- **Margin of Safety**: Only buy when price is at least 30% below conservative intrinsic value. This protects against errors in our analysis, bad luck, and unforeseen events.
- **Drawdown tolerance**: We accept up to 50% drawdowns on individual positions if the thesis remains intact. Price decline alone is never a reason to sell. Volatility is the price of compounding.
- **Stop-loss**: None. We sell when the thesis breaks, not when the price drops. Mechanical stop-losses force selling at the worst time.
- **Correlation**: Avoid holding more than 3 positions in the same industry or with the same primary risk factor. Diversification across risk factors, not across tickers.
- **Leverage**: Never use margin. Never use options for leverage. Leverage turns survivable drawdowns into permanent losses.

## Execution

### Buy Rules

All conditions must be met:

1. Price is clearly below conservative intrinsic value (30%+ margin of safety)
2. Business quality is high: durable moat, high returns, pricing power
3. Management is trustworthy and aligned with owners
4. We can explain the thesis in one paragraph
5. Position sizing fits within portfolio constraints
6. We have enough data to evaluate (not missing critical information)

### Sell Rules

Sell when any of these is true:

1. **Thesis broken**: moat deteriorated, management lost credibility, economics changed structurally, competitive position weakened
2. **Better opportunity**: a clearly superior investment with similar or lower risk is available and we need capital
3. **Position too large**: rebalance if a single position exceeds 40% of portfolio due to appreciation (trim to 25-30%)
4. **Valuation extreme**: price exceeds 2x base-case intrinsic value with no fundamental improvement to justify it

Never sell solely because:
- The price dropped
- The market is "volatile"
- A macro event scared the market
- An analyst downgraded the stock

### Special Situations

- **Spinoffs**: Evaluate the spun-off entity independently using the full process
- **M&A target**: If our company is acquired for cash, sell at deal price minus small spread. If stock-for-stock, evaluate the acquirer
- **Dilution**: If share count increases > 3% annually without corresponding ROIC improvement, reassess
- **Management change**: New CEO/CFO triggers a full re-evaluation within 2 quarters

## Monitoring

### Quarterly Review

For each position, check:

- Revenue growth trajectory (organic vs. acquired)
- Margin trends: gross, operating, net
- Free cash flow vs. reported earnings (cash conversion quality)
- ROIC trend
- Share count changes (buyback or dilution?)
- Management commentary vs. prior guidance (credibility check)
- Competitive position: any new entrants, market share changes?

### Annual Deep Review

Once per year, conduct a full re-evaluation:

- **Moat durability**: Is the competitive position stronger or weaker than when we bought? What changed?
- **Capital allocation**: Did management deploy capital intelligently? Acquisitions, buybacks, dividends, reinvestment?
- **Valuation update**: Where does the current price sit vs. updated intrinsic value? Has the value grown?
- **Thesis check**: Are the original reasons for buying still valid? Any invalidation triggers hit?
- **Opportunity cost**: Is this still one of our best ideas, or could the capital work harder elsewhere?

### Invalidation Triggers

Immediately reassess (do not wait for next quarterly review) if:

- Revenue declines > 10% in a single quarter (non-cyclical business)
- Gross margin compresses > 500bps year-over-year
- CEO or CFO departure
- Accounting restatement or SEC investigation
- Major customer loss (> 15% of revenue)
- Debt covenant breach or credit downgrade to junk
- Competitor achieves structural cost advantage
- Regulatory action that fundamentally changes the business model

## Playbooks

### Investment Memo

When evaluating a new opportunity, produce this structured output:

```md
# Investment Memo: [Company]

## Verdict
Buy / Watchlist / Pass / Too Hard

## One-Line Thesis
[One sentence: what the business does, why it's durable, why it's cheap]

## Business Summary
[What they sell, who pays, why customers choose them]

## Circle Of Competence
[Inside / Outside. If outside, stop here.]

## Business Quality
- Moat: [type and strength]
- Durability: [5-10 year outlook]
- Returns: [ROIC level and trend]
- Reinvestment: [runway and rate]
- Cash conversion: [FCF vs. earnings]
- Pricing power: [evidence]

## Management And Capital Allocation
[Incentives, track record, communication quality]

## Intrinsic Value Range
- Conservative: [$X]
- Base: [$X]
- Optimistic: [$X]
- Key assumptions: [what drives the range]

## Margin Of Safety
[Current price vs. conservative value. Percentage discount.]

## Main Risks
[Top 3-5 risks, ranked by probability × impact]

## Invalidation Triggers
[What would make us wrong]

## What To Monitor
[Key metrics and review cadence]

## Missing Data
[What we wish we knew but don't]
```

### Holding Review

When reviewing an existing position, produce:

```md
# Holding Review: [Company]
## Date: [Quarter/Year]

## Thesis Status
Intact / Weakening / Broken

## Key Changes Since Last Review
[What changed in the business, market, or competitive landscape]

## Metrics Dashboard
| Metric | Current | Prior | Trend | Alert |
|--------|---------|-------|-------|-------|
| Revenue Growth | | | | |
| Gross Margin | | | | |
| FCF | | | | |
| ROIC | | | | |
| Share Count | | | | |

## Valuation Update
- Current price: [$X]
- Updated intrinsic value: [$X - $X range]
- Margin of safety: [X%]

## Action
Add / Hold / Trim / Sell

## Reasoning
[Why this action, based on the data above]
```

## Do's and Don'ts

- Do use primary sources: 10-K, 10-Q, earnings transcripts, proxy statements
- Do estimate value as a range, never as a single precise number
- Do prefer boring durability over exciting fragility
- Do admit when something is outside the circle of competence — "Too Hard" is a valid answer
- Do focus on what the business will earn over the next 10 years, not what the stock will do next quarter
- Do sit on your hands — inactivity is a position
- Don't confuse cheap multiples with true value — a cheap bad business is still bad
- Don't overestimate moat durability based on past success — moats erode
- Don't use aggressive growth assumptions to justify a purchase you want to make
- Don't ignore leverage and refinancing risk — debt kills in downturns
- Don't trust adjusted earnings without checking cash conversion — cash is fact, adjustments are opinion
- Don't force a decision when critical data is missing — say "Too Hard" and move on
- Don't fall in love with a famous investor's past holding — evaluate the business today
- Don't sell solely because the price dropped — sell when the thesis breaks
- Don't use leverage — it turns survivable drawdowns into permanent losses
- Don't diversify into mediocrity — concentrate on your best ideas

## Source Notes

This model is distilled from:

- Benjamin Graham, *The Intelligent Investor* (chapters 8, 20)
- Warren Buffett shareholder letters (1977-present)
- Berkshire Hathaway annual meeting transcripts
- Charlie Munger, *Poor Charlie's Almanack*
- Bruce Greenwald, *Value Investing: From Graham to Buffett and Beyond*
- Michael Mauboussin, writings on ROIC and expectations investing

Use primary sources when possible. When quoting or attributing a specific investor, include the source.
