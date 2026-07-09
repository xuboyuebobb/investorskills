---
version: alpha
name: Burry Asymmetric Contrarian
slug: burry-asymmetric-contrarian
aliases:
  - Michael Burry
  - Big Short
description: "Contrarian, primary-source, asymmetric long/short investing in complex or hated mispricings"
investor: Michael Burry
style: contrarian+value+short+event
timeHorizon: months-years
decisionCadence: event-driven
assetClasses:
  - public equities
  - credit
  - derivatives
circleOfCompetence:
  - primary-source fundamental research
  - complex mispricing
  - short theses
  - deep value
  - credit and mortgage structures
universe:
  geographies:
    - global developed markets
  instruments:
    - stocks
    - bonds
    - CDS
    - options
    - distressed securities
  liquidity: medium-high
  dataRequirements:
    - filings
    - prospectuses
    - debt docs
    - historical financials
marketRegime:
  preferred: consensus complacency, ignored complexity, bubble pricing, forced disbelief
  avoid: no catalyst, unlimited borrow/carry risk, reflexive squeeze with no stop
  posture: patient, isolated, evidence-first
signals:
  evidence:
    primaryDocumentEdge:
      weight: high
      frequency: event-driven
      source: filings, prospectuses, loan tapes, footnotes
      description: Edge comes from reading documents others skip.
    consensusError:
      weight: high
      frequency: event-driven
      source: market narrative and valuation
      description: The market must be wrong in a specific, testable way.
    asymmetricPayoff:
      weight: high
      frequency: event-driven
      source: trade structure
      description: Upside if right should greatly exceed cost if wrong.
    catalystPath:
      weight: medium
      frequency: event-driven
      source: maturities, resets, earnings, legal events
      description: The mispricing needs a path to recognition.
filters:
  primaryEvidenceReviewed: required
  variantPerceptionSpecific: required
  asymmetryClear: required
  carrySurvivable: required
  noCatalyst: disqualifier
  unlimitedSqueezeRisk: disqualifier
sizing:
  maxPosition: small-to-medium until timing risk is contained
  maxPortfolio: concentrated only after survival analysis
  convictionThreshold: high
  scalingRule: add as evidence validates, not as price moves against thesis
  riskPerTrade: sized to survive being early
risk:
  stopLoss: thesis-and-carry-based
  maxDrawdown: path risk must be survivable
  correlationLimit: avoid many trades dependent on the same crisis timing
  leverage: structure-specific, never assumed
  positionCutRule: exit if primary evidence invalidates variant perception or carry becomes fatal
metrics:
  thesisEvidence:
    frequency: event-driven
    alert: new facts contradict mechanism
  carryCost:
    frequency: monthly
    alert: cost exceeds expected asymmetry
  crowding:
    frequency: weekly
    alert: squeeze or borrow risk dominates
playbooks:
  contrarianMemo:
    verdictOptions: Asymmetric Long / Asymmetric Short / Watch / Too Early / Pass
    requiredSections: consensus,variant,evidence,structure,catalyst,carry,invalidation
sources:
  - Michael Lewis, The Big Short
  - Scion Capital public letters and filings
  - Public Michael Burry interviews and 13F filings
---

# Burry Asymmetric Contrarian

The Burry lens is not generic pessimism. It is document-driven variant perception: find where consensus is wrong, prove the mechanism with primary evidence, and structure the payoff so being right matters more than being popular.

## Philosophy

The best trade may be lonely, early, and psychologically painful. That is acceptable only if the evidence is primary, the mechanism is specific, and the position can survive the wait.

Contrarian is not a personality. It is a result of facts disagreeing with consensus.

## Universe & Regime

- **Asset classes**: Equities, credit, derivatives, distressed or complex assets.
- **Universe**: Situations with primary documents and specific mispricing mechanisms.
- **Preferred regime**: Complacent consensus, bubble pricing, ignored complexity.
- **Avoid**: No catalyst, unbounded short squeeze, fatal carry, vague macro doom.
- **Posture**: Patient, skeptical, primary-source driven.

## Signals

- **Primary Document Edge** (high): Does reading the actual docs reveal what the market missed?
- **Consensus Error** (high): Is the market wrong in a specific way?
- **Asymmetric Payoff** (high): Can the trade make much more if right than it loses if wrong?
- **Catalyst Path** (medium): What forces recognition?

## Filters

- **Primary Evidence Reviewed** (required): No trade from headlines.
- **Variant Perception Specific** (required): The difference from consensus must be testable.
- **Asymmetry Clear** (required): A clever thesis without payoff structure is not enough.
- **Carry Survivable** (required): Being early cannot bankrupt the trade.
- **No Catalyst** (disqualifier): Cheap can stay cheap.
- **Unlimited Squeeze Risk** (disqualifier): Short risk must be bounded or sized tiny.

## Analysis

### 1. Define Consensus

What does the market believe, and where is that belief embedded in price?

### 2. Build Variant Perception

What do primary documents show that consensus ignores?

### 3. Structure The Trade

What instrument best expresses the asymmetry: equity, debt, options, CDS, or no trade?

### 4. Model Time And Carry

How long can the trade be wrong before it works? What is the cost of waiting?

## Position Sizing

- **Initial size**: Small enough to survive being early.
- **Add rule**: Add only after evidence improves or market structure reduces risk.
- **Max size**: Only when carry, squeeze, and path risk are controlled.
- **Cash rule**: Cash is better than a vague contrarian opinion.

## Risk Management

- **Primary risk**: Being right but too early or improperly structured.
- **Stop**: Thesis/carry based.
- **Correlation**: Avoid one systemic timing bet across many positions.
- **Leverage**: Only if structure explicitly caps downside.

## Execution

### Entry Rules

1. Consensus is specific.
2. Variant evidence is primary.
3. Asymmetry is clear.
4. Carry/path risk is survivable.

### Exit Rules

1. Primary evidence invalidates thesis.
2. Carry becomes too costly.
3. Catalyst fails or is delayed beyond survivability.
4. Payoff becomes priced in.

## Monitoring

- **Cadence**: Event-driven, monthly carry review.
- **Metrics**: New facts, borrow/carry, catalyst timing, crowding, mark-to-market stress.
- **Alerts**: Borrow squeeze, thesis contradiction, funding cost spike.

## Playbooks

### Contrarian Memo

Return `Asymmetric Long`, `Asymmetric Short`, `Watch`, `Too Early`, or `Pass` with consensus, variant perception, primary evidence, trade structure, catalyst, carry, and invalidation.

## Canonical Cases

- **Subprime mortgage CDS, 2005-2008**: The defining Burry case: loan-level and prospectus work revealed mortgage credit quality was far worse than ratings and market pricing implied.
- **GameStop, 2019**: A hated equity with extreme short interest, balance-sheet optionality, and potential capital return/catalyst before the later meme squeeze.
- **Small-cap value at Scion**: Burry's pre-Big Short record was built from obscure, document-heavy value situations where the market ignored asset value or earnings power.

Study these cases for primary-source work, variant perception, asymmetry, and survival through social/mark-to-market pressure.

## Do's and Don'ts

- Do read primary documents.
- Do define the exact consensus error.
- Do size for being early.
- Don't be contrarian as performance art.
- Don't ignore carry, borrow, or squeeze risk.
- Don't use stale 13F positions as current views.

## Source Notes

This model is distilled from public Scion history, Burry's subprime case, Michael Lewis's reporting, and public filings. Verify current positions from fresh filings, not old narratives.
