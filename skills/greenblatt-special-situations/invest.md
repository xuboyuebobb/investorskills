---
version: alpha
name: Greenblatt Special Situations
slug: greenblatt-special-situations
aliases:
  - Joel Greenblatt
  - You Can Be A Stock Market Genius
  - Magic Formula
description: "Spinoffs, restructurings, merger securities, forced selling, and quality-value special situations"
investor: Joel Greenblatt
style: value+event+special-situations
timeHorizon: months-years
decisionCadence: event-driven
assetClasses:
  - public equities
circleOfCompetence:
  - spinoffs
  - restructurings
  - merger securities
  - magic formula quality-value screens
  - forced-selling events
universe:
  geographies:
    - developed markets
  instruments:
    - stocks
    - rights
    - warrants
    - stubs
    - merger securities
  liquidity: medium-high
  dataRequirements:
    - Form 10
    - proxy statements
    - pro forma financials
    - event terms
marketRegime:
  preferred: event complexity, forced selling, neglected small securities
  avoid: crowded event trades with no edge or bad pro forma leverage
  posture: opportunistic, event-driven
signals:
  event:
    forcedSellingMechanism:
      weight: high
      frequency: event-driven
      source: index eligibility, mandate mismatch, shareholder base
      description: Structural selling creates opportunity.
    standaloneValue:
      weight: high
      frequency: event-driven
      source: pro forma financials
      description: Value the security as if independent.
    insiderIncentives:
      weight: high
      frequency: event-driven
      source: filings and ownership
      description: Insider ownership and incentives often reveal attractiveness.
    eventCatalyst:
      weight: medium
      frequency: event-driven
      source: transaction timeline
      description: Event timing can unlock value.
filters:
  eventStructureUnderstood: required
  forcedSellingOrNeglect: required
  standaloneValueAttractive: required
  incentivesAligned: required
  proFormaLeverageBad: disqualifier
  noMispricing: disqualifier
sizing:
  maxPosition: event-risk adjusted
  maxPortfolio: diversified special situations
  convictionThreshold: medium-high
  scalingRule: buy when forced selling appears and value is clear
  riskPerTrade: defined by downside if event fails
risk:
  stopLoss: event-and-value-based
  maxDrawdown: tolerate event volatility if value intact
  correlationLimit: avoid many events tied to same market risk
  leverage: avoid unless event spread and downside are explicit
  positionCutRule: exit when event economics worsen or value gap closes
metrics:
  eventTimeline:
    frequency: event-driven
    alert: delay or terms change
  proFormaLeverage:
    frequency: event-driven
    alert: debt load worse than expected
  insiderBehavior:
    frequency: event-driven
    alert: insiders sell or incentives weaken
playbooks:
  specialSituationMemo:
    verdictOptions: Buy / Watchlist / Event Too Crowded / No Mispricing / Pass
    requiredSections: event,forcedSelling,value,incentives,catalyst,risks
sources:
  - docs/podcast-list.md
  - docs/reading-list.md
  - Joel Greenblatt, You Can Be a Stock Market Genius
  - Joel Greenblatt, The Little Book That Beats the Market
  - Gotham Capital public history
---

# Greenblatt Special Situations

Special situations work because many investors cannot or will not own the new security. The edge is structural: forced selling, complexity, neglected small caps, or mispriced event terms.

## Philosophy

Look where the market is not looking. Spinoffs, restructurings, rights, stubs, and merger securities often create temporary holders who sell for non-economic reasons.

## Universe & Regime

- **Asset classes**: Public equities and event securities.
- **Universe**: Spinoffs, restructurings, merger securities, rights, stubs, and quality-value screens.
- **Preferred regime**: Complexity and forced selling.
- **Avoid**: Crowded events, bad leverage, no standalone value.
- **Posture**: Opportunistic and event-specific.

## Signals

- **Forced Selling Mechanism** (high): Who must sell and why?
- **Standalone Value** (high): What is the security worth after the event?
- **Insider Incentives** (high): Are managers and insiders aligned?
- **Event Catalyst** (medium): What closes the gap?

## Filters

- **Event Structure Understood** (required): Do not trade what you cannot model.
- **Forced Selling Or Neglect** (required): Need a reason for mispricing.
- **Standalone Value Attractive** (required): Event alone is not enough.
- **Incentives Aligned** (required): Insiders should have reason to create value.
- **Pro Forma Leverage Bad** (disqualifier): Debt can ruin spins.
- **No Mispricing** (disqualifier): Complexity without discount is a pass.

## Analysis

### 1. Decode The Event

Identify parent, spin, stub, rights, debt allocation, and shareholder base.

### 2. Find Forced Selling

Who cannot own it: index funds, mandate-limited holders, size-constrained funds, income funds?

### 3. Value The Standalone Security

Normalize earnings, assets, leverage, and capital allocation.

### 4. Check Incentives

Insider ownership, options, management focus, and capital allocation.

## Position Sizing

- **Initial size**: Small before event mechanics settle.
- **Add rule**: Add during forced selling if value and incentives hold.
- **Max size**: Event-risk adjusted.
- **Cash rule**: Wait when terms are unclear.

## Risk Management

- **Primary risk**: Misreading event structure or leverage.
- **Stop**: Event/value based.
- **Correlation**: Avoid too many event trades tied to the same market.
- **Leverage**: Avoid unless downside is explicit.

## Execution

### Entry Rules

1. Event terms understood.
2. Forced selling or neglect likely.
3. Standalone value attractive.
4. Incentives aligned.

### Exit Rules

1. Value gap closes.
2. Event terms worsen.
3. Leverage or business quality disappoints.
4. Better special situation appears.

## Monitoring

- **Cadence**: Event-driven and quarterly.
- **Metrics**: Event timeline, pro forma leverage, insider behavior, forced-selling window, valuation gap.
- **Alerts**: Terms change, delay, insider selling, debt surprise.

## Playbooks

### Special Situation Memo

Return `Buy`, `Watchlist`, `Event Too Crowded`, `No Mispricing`, or `Pass` with event structure, forced selling, value, incentives, catalyst, and risks.

## Canonical Cases

- **Host Marriott spinoff**: A classic spinoff case from Greenblatt's framework: ugly-looking assets and forced-selling dynamics created opportunity for investors willing to analyze the structure.
- **Liberty Media-related complexity**: John Malone-style structures demonstrate how complexity, stubs, and tracking stocks can create mispricing for patient analysts.
- **Magic Formula portfolios**: Quality plus cheapness as a systematic source of ideas, separate from event-driven special situations.

Study these cases for structural mispricing, not generic cheapness.

## Do's and Don'ts

- Do read event filings.
- Do identify the forced seller.
- Do check pro forma debt.
- Don't buy every spinoff.
- Don't ignore incentives.
- Don't assume complexity equals value.




## Podcasts

- Shared podcast list with Spotify links: ../../docs/podcast-list.md

## Reading List

- You Can Be a Stock Market Genius: https://www.amazon.com/You-Can-Stock-Market-Genius/dp/0684840073
- The Little Book That Beats the Market: https://www.amazon.com/Little-Book-That-Beats-Market/dp/0471733067
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Greenblatt's books, Gotham Capital history, and public special-situation case studies.
