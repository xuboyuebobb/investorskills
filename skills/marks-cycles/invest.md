---
version: alpha
name: Howard Marks Cycles
slug: marks-cycles
aliases:
  - Second-Level Thinking
  - Cycle Risk Posture
description: Second-level thinking, credit cycles, risk premiums, and defensive versus aggressive posture
investor: Howard Marks
style: cycle+credit+contrarian+second-level-thinking
timeHorizon: months-years
decisionCadence: monthly
assetClasses:
  - credit
  - public equities
  - multi-asset
circleOfCompetence:
  - credit cycles
  - market psychology
  - distressed assets
  - risk premiums
universe:
  geographies:
    - global
  instruments:
    - credit
    - equities
    - funds
    - distressed assets
  marketCap: any
  liquidity: medium-high
  dataRequirements:
    - valuation
    - yields or spreads
    - credit conditions
    - sentiment and positioning
marketRegime:
  preferred: panic, forced selling, wide risk premiums, or neglected assets
  avoid: euphoric markets with underpriced risk
  posture: defensive when risk is ignored, aggressive when risk is overpaid
signals:
  macro:
    creditSpreads:
      weight: high
      direction: higher-is-better
      frequency: weekly
      source: credit markets
      description: Wider spreads can signal better compensation for risk.
    liquidityCycle:
      weight: high
      frequency: monthly
      source: credit availability and financing conditions
      description: Easy credit encourages risk-taking; tight credit creates bargains and defaults.
  sentiment:
    marketPsychology:
      weight: high
      frequency: weekly
      source: flows, surveys, narratives, positioning
      description: Fear and greed drive cycle extremes.
    consensusOptimism:
      weight: medium
      direction: lower-is-better
      frequency: monthly
      source: market commentary and valuations
      description: High optimism often means low forward return.
  valuation:
    riskPremium:
      weight: high
      direction: higher-is-better
      frequency: monthly
      source: yield, spread, valuation model
      description: Risk is attractive only when compensated.
filters:
  riskPremiumAdequate: required
  cycleIdentified: required
  marginForError: required
  forcedOptimism: disqualifier
  noCompensationForRisk: disqualifier
sizing:
  maxPosition: posture-based
  maxPortfolio: diversified by risk factor
  convictionThreshold: medium-high
  scalingRule: increase exposure as risk premium improves and forced selling appears
  cashReserve: high when market is euphoric
risk:
  stopLoss: thesis-based
  maxDrawdown: cycle-aware
  correlationLimit: avoid hidden exposure to one credit or liquidity factor
  leverage: none or limited
  positionCutRule: reduce when risk premium compresses or thesis becomes consensus
metrics:
  creditSpreads:
    frequency: weekly
    alert: spreads compress to underpriced risk
  defaultRates:
    frequency: monthly
    alert: defaults rise beyond thesis expectations
  liquidity:
    frequency: monthly
    alert: financing conditions change sharply
playbooks:
  cycleMemo:
    verdictOptions: Defensive / Neutral / Opportunistic / Aggressive / Stand Down
    requiredSections: cycle,psychology,riskPremium,posture,sizing,invalidation
sources:
  - docs/podcast-list.md
  - docs/reading-list.md
  - Howard Marks, The Most Important Thing
  - Howard Marks, Mastering the Market Cycle
  - Oaktree memos by Howard Marks
---

# Howard Marks Cycles

Investment risk is not a number. It is the probability of permanent loss, overpaying, being forced to sell, or holding risk when nobody is paying you to hold it.

## Philosophy

The best opportunities often appear when others are forced to sell or too fearful to act. The worst risks often appear when markets feel safest.

Second-level thinking asks: what is the consensus, what is already in the price, and what happens if the consensus is wrong?

## Universe & Regime

- **Asset classes**: Credit, equities, distressed assets, multi-asset portfolios.
- **Universe**: Markets where price, value, risk premium, and psychology can be evaluated.
- **Preferred regime**: Panic, wide spreads, low expectations, forced sellers.
- **Avoid**: Euphoria, easy credit, compressed risk premiums, covenant-lite complacency.
- **Posture**: Defensive when risk is underpriced, aggressive when risk is overpaid.

## Signals

### Cycle And Credit

- **Credit Spreads** (high, weekly): Wide spreads can compensate for risk; tight spreads often signal complacency.
- **Liquidity Cycle** (high, monthly): Easy credit fuels excess. Tight credit creates stress and opportunity.
- **Risk Premium** (high, monthly): Expected return must compensate for uncertainty and illiquidity.

### Psychology

- **Market Psychology** (high, weekly): Fear creates bargains; greed creates fragility.
- **Consensus Optimism** (medium, monthly): The more everyone believes risk is low, the more dangerous the setup.

## Filters

- **Risk Premium Adequate** (required): No investment unless risk is compensated.
- **Cycle Identified** (required): Know whether you are early, mid, late, stressed, panic, or recovery.
- **Margin For Error** (required): Forecasts will be wrong.
- **Forced Optimism** (disqualifier): Avoid buying because everyone else feels safe.
- **No Compensation For Risk** (disqualifier): High risk without high return is a pass.

## Analysis

### 1. Locate The Cycle

Identify credit availability, investor psychology, valuations, leverage, and default risk.

### 2. Separate First-Level And Second-Level Views

First-level: this asset is good or bad. Second-level: expectations and price make it attractive or unattractive.

### 3. Decide Posture

Use cycle position and risk premium to choose defensive, neutral, opportunistic, or aggressive.

## Position Sizing

- **Initial size**: Modest when cycle signal is early.
- **Add rule**: Add into better risk premiums and forced selling, not into euphoria.
- **Max size**: Based on margin for error and liquidity.
- **Cash rule**: Cash is valuable when future bargains are likely.

## Risk Management

- **Primary risk**: Being too aggressive when risk is underpriced.
- **Stop**: Thesis-based, with reassessment if spreads, defaults, or liquidity change.
- **Correlation**: Avoid all positions depending on the same credit condition.
- **Leverage**: Avoid or limit.

## Execution

### Entry Rules

1. Cycle position is understood.
2. Risk premium is attractive.
3. Market psychology is fearful or expectations are low.
4. Downside has a margin for error.

### Exit Rules

1. Risk premium compresses.
2. Thesis becomes consensus.
3. Credit risk rises beyond compensation.
4. Better opportunities appear.

## Monitoring

- **Cadence**: Weekly spreads and sentiment, monthly cycle review.
- **Metrics**: Spreads, default rates, liquidity, valuations, flows, leverage.
- **Alerts**: Spread compression, excessive optimism, refinancing stress.

## Playbooks

### Cycle Memo

Return `Defensive`, `Neutral`, `Opportunistic`, `Aggressive`, or `Stand Down` with cycle position, risk premium, psychology, sizing, and invalidation.

## Canonical Cases

- **2008-2009 distressed credit deployment**: Oaktree's best-known cycle case: risk premiums widened, forced sellers appeared, and fear created unusually attractive credit opportunities for patient capital.
- **Pre-crisis defensive posture, 2006-2007**: A case in recognizing easy credit, weak lending standards, and underpriced risk before the cycle turned. The lesson is becoming defensive when markets treat risk as low.
- **March 2020 credit dislocation**: A rapid panic where spreads widened and liquidity stress created opportunities, but speed and policy response mattered. The lesson is to move from defensive to opportunistic only when compensation improves.

Study these cases for cycle position, risk premium, market psychology, liquidity, and margin for error.

## Do's and Don'ts

- Do ask what is already priced in.
- Do demand compensation for risk.
- Do become more aggressive when bargains improve.
- Don't confuse low volatility with low risk.
- Don't chase return when risk premium is thin.
- Don't forecast with false precision.




## Podcasts

- Odd Lots: https://open.spotify.com/search/Odd%20Lots%20Bloomberg/shows
- Macro Voices: https://open.spotify.com/search/Macro%20Voices/shows
- Capital Allocators: https://open.spotify.com/search/Capital%20Allocators/shows
- Shared podcast list: ../../docs/podcast-list.md

## Reading List

- Oaktree memos: https://www.oaktreecapital.com/insights/memo
- The Most Important Thing: https://www.amazon.com/Most-Important-Thing-Uncommon-Sense/dp/0231153686
- Mastering the Market Cycle: https://www.amazon.com/Mastering-Market-Cycle-Getting-Odds/dp/1328480569
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from Howard Marks's books and Oaktree memos, especially his writing on cycles, risk, and second-level thinking.
