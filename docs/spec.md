# INVEST.md Format Specification

<!-- version: alpha -->

INVEST.md is an optional investment-system schema for Investor Skills. It is a self-contained, plain-text representation of how an investor thinks, filters, evaluates, sizes, and acts — enabling AI finance agents to apply that investor's judgment framework consistently across opportunities.

The primary package is the Investor Skill (`SKILL.md`). Use a separate `INVEST.md` or `invest.md` file only when the investment system is large enough to benefit from a dedicated schema file.

An INVEST.md file contains two parts: a YAML frontmatter with machine-readable investment tokens, and a markdown body with human-readable investment rationale. The tokens are the normative parameters; the prose provides context for how to apply them.

## Design Philosophy

Most investing content is passive: books, interviews, letters, podcasts. The useful part is operational:

- What does this investor notice before others?
- What questions do they ask every time?
- What data do they trust? What do they ignore?
- What makes them act? What makes them wait?
- What would their agent scan for every day?

INVEST.md extracts those decision patterns into a structured format that both humans and AI agents can understand, apply, and audit.

### Analogy to DESIGN.md

| DESIGN.md (visual identity) | INVEST.md (investment identity) |
|---|---|
| Colors → what the brand looks like | Signals → what the investor watches |
| Typography → how the brand speaks | Filters → how the investor screens |
| Layout → how the brand is structured | Analysis → how the investor evaluates |
| Components → how the brand is built | Playbooks → how the investor acts |
| Do's and Don'ts → visual guardrails | Do's and Don'ts → behavioral guardrails |

---

# Investment Tokens

INVEST.md embeds investment tokens in YAML front matter. The front matter block must begin with a line containing exactly `---` and end with a line containing exactly `---`. The YAML content between these delimiters is parsed according to the schema below.

Example:

```yaml
---
version: alpha
name: Buffett/Munger Value Investing
slug: buffett-munger-value
aliases:
  - Buffett Value Compounder
  - Quality Value
description: Long-term ownership of durable businesses bought below intrinsic value
investor: Warren Buffett, Charlie Munger
style: value
timeHorizon: 5-10 years
decisionCadence: quarterly
assetClasses:
  - public equities
circleOfCompetence:
  - consumer brands
  - insurance
  - financial services
  - utilities
universe:
  geographies:
    - United States
  marketCap: large-cap
  liquidity: high
marketRegime:
  preferred: any
  avoid: none
  posture: patient
signals:
  fundamental:
    ownerEarnings:
      weight: high
      frequency: quarterly
      description: Net income + D&A - capex
    roic:
      weight: high
      direction: higher-is-better
    grossMargin:
      weight: medium
      direction: stable-or-expanding
  technical:
    priceToBook:
      weight: medium
      threshold: "< 1.5"
filters:
  understandable: required
  durableMoat: required
  consistentFCF: required
  debtToEquity: "< 0.5"
sizing:
  maxPosition: 25%
  maxPortfolio: 15
  convictionThreshold: high
risk:
  maxDrawdown: 50%
  stopLoss: none
  marginOfSafety: 30%
---
```

## Schema

```yaml
version: <string>                    # optional, current: "alpha"
name: <string>                       # investment model name
slug: <string>                       # optional stable install/file identifier
aliases:                             # optional display names or common strategy names
  - <string>
description: <string>                # optional one-liner
investor: <string>                   # investor(s) this model is based on
style: <Style>                       # investment style classification
timeHorizon: <TimeHorizon>           # expected holding period
decisionCadence: <DecisionCadence>    # how often the model should actively reassess
assetClasses:                        # optional asset classes the model can analyze
  - <AssetClass>
circleOfCompetence:                  # optional, domains the model covers
  - <string>
universe:                            # optional investable universe constraints
  <param-name>: <string | list>
marketRegime:                        # optional preferred/avoided market conditions
  preferred: <string>
  avoid: <string>
  posture: <string>
signals:                             # what to watch and how much it matters
  <category>:
    <signal-name>: <Signal>
filters:                             # hard gates that pass/reject opportunities
  <filter-name>: <Filter>
sizing:                              # position sizing parameters
  <param-name>: <SizingValue>
risk:                                # risk management parameters
  <param-name>: <RiskValue>
metrics:                             # key metrics to track on existing holdings
  <metric-name>: <Metric>
playbooks:                           # named decision playbooks
  <playbook-name>:
    <param-name>: <string | token reference>
sources:                             # primary sources used to build the model
  - <string>
```

### Token Types

**Style**: One of: `value`, `growth`, `momentum`, `trend-following`, `breakout`, `macro`, `reflexivity`, `cycle`, `credit`, `quant`, `event`, `income`, `contrarian`, `quality`, `second-level-thinking`, `mental-models`, `blend`. Multiple styles may be combined with `+` (e.g., `value+quality`).

**TimeHorizon**: A string describing the expected holding period. Common values: `intraday`, `days`, `weeks`, `months`, `1-3 years`, `3-5 years`, `5-10 years`, `10+ years`, `forever`.

**DecisionCadence**: A string describing how often the model should actively reassess new opportunities or existing positions. Common values: `intraday`, `daily`, `weekly`, `monthly`, `quarterly`, `annual`, `event-driven`.

**AssetClass**: A string describing a supported investable class. Common values: `public equities`, `private equities`, `crypto`, `commodities`, `rates`, `credit`, `fx`, `prediction markets`, `real assets`, `multi-asset`.

**Universe**: A map of constraints that define what the model is allowed to evaluate. Common keys: `geographies`, `sectors`, `instruments`, `marketCap`, `liquidity`, `exclusions`, `dataRequirements`.

**MarketRegime**: A map describing the conditions in which the model is most useful. Common keys: `preferred`, `avoid`, `posture`, `riskOn`, `riskOff`, `cyclePhase`, `trendRequirement`.

**Signal**: An object describing an investment signal.

| Property | Type | Required | Description |
|---|---|---|---|
| `weight` | `high` \| `medium` \| `low` | yes | How much this signal influences the decision |
| `direction` | `higher-is-better` \| `lower-is-better` \| `stable-is-better` \| `trend-up` \| `trend-down` | no | Preferred direction |
| `threshold` | string | no | A specific threshold value or range |
| `frequency` | `intraday` \| `daily` \| `weekly` \| `monthly` \| `quarterly` \| `annual` \| `event-driven` | no | How often to check this signal |
| `source` | string | no | Where to find this data |
| `description` | string | no | What this signal means |

**Filter**: A value describing a hard gate. May be:
- `required` — must be true to proceed
- `disqualifier` — if true, reject immediately
- A string expression (e.g., `"< 0.5"`, `"> 15%"`, `"within-circle"`)

**SizingValue**: May be:
- A percentage string (e.g., `"25%"`)
- A number (e.g., `15` for count of positions)
- A keyword (e.g., `high`, `medium`, `low`, `kelly`, `equal-weight`)

**RiskValue**: May be:
- A percentage string (e.g., `"50%"`)
- A keyword (e.g., `none`, `trailing`, `hard`, `time-based`)
- A string expression (e.g., `"30% below intrinsic value"`)

**Metric**: An object or string describing a metric to track.

| Property | Type | Required | Description |
|---|---|---|---|
| `frequency` | `daily` \| `weekly` \| `monthly` \| `quarterly` \| `annual` | no | How often to check |
| `alert` | string | no | Condition that triggers an alert |
| `description` | string | no | What this metric means |

**Token References**: A token reference must be wrapped in curly braces and contain an object path to another value in the YAML tree (e.g., `{signals.fundamental.ownerEarnings.weight}`). Within the `playbooks` section, references to any previously defined token are permitted.

---

# Sections

Every INVEST.md follows the same structure. Sections can be omitted if not relevant, but those present must appear in the sequence listed below. All sections use `##` headings. An optional `#` heading may appear for document titling but is not parsed as a section.

## Section Order

1. **Philosophy** (also: "Worldview", "Core Beliefs")
2. **Universe & Regime** (also: "Where It Works", "Market Conditions")
3. **Signals** (also: "What To Watch")
4. **Filters** (also: "Screening Criteria", "Gates")
5. **Analysis** (also: "Evaluation Process", "Due Diligence")
6. **Position Sizing** (also: "Sizing")
7. **Risk Management** (also: "Risk")
8. **Execution** (also: "Entry & Exit", "Trading Rules")
9. **Monitoring** (also: "Post-Purchase", "Ongoing Review")
10. **Playbooks** (also: "Decision Templates")
11. **Do's and Don'ts** (also: "Behavioral Guardrails")
12. **Source Notes** (also: "Sources", "References")

---

## Philosophy

Also known as "Worldview" or "Core Beliefs".

This section describes the investor's foundational worldview: what they believe about markets, what edge they claim, what they refuse to do, and what time horizon they operate on. It serves as the foundational context for guiding the agent's high-level decision style when a specific rule or token is not explicitly defined.

Example:

```markdown
## Philosophy

A stock is fractional ownership in a business. The right question is:
would I be comfortable owning the whole business at this price?

We believe markets are mostly efficient but occasionally misprice
durable businesses during periods of fear, complexity, or boredom.
Our edge is patience: we can hold forever, which most investors cannot.

We stay inside our circle of competence. We prefer boring durability
over exciting fragility. We would rather own a few great businesses
than many mediocre ones.
```

### Design Tokens

The `style`, `timeHorizon`, and `circleOfCompetence` tokens in the frontmatter should reflect the philosophy described in this section.

---

## Universe & Regime

Also known as "Where It Works" or "Market Conditions".

This section defines the investable universe and the market conditions where the model should be used. It prevents agents from applying a strategy outside its natural habitat: using Buffett-style ownership analysis on intraday futures, using Livermore-style breakout rules on illiquid microcaps, or using Howard Marks cycle judgment without identifying the cycle phase.

Each Universe & Regime section should explain:
- Which asset classes and instruments are in scope
- Which geographies, sectors, market caps, or liquidity profiles are acceptable
- Which market regimes are preferred, dangerous, or irrelevant
- How the model should change posture when the regime changes

Example:

```markdown
## Universe & Regime

- **Asset classes**: Public equities only.
- **Universe**: Liquid US-listed large-cap and mid-cap companies with 10+ years of operating history.
- **Preferred regime**: Any regime, provided the business is understandable and price is below conservative intrinsic value.
- **Avoid**: Businesses with missing primary filings, fragile balance sheets, or economics dominated by commodity price speculation.
- **Posture**: Patient. Cash is acceptable when no opportunity clears the filters.
```

### Design Tokens

The `assetClasses`, `universe`, `marketRegime`, and `decisionCadence` tokens in the frontmatter should reflect the scope and market-condition rules described in this section.

```yaml
decisionCadence: quarterly
assetClasses:
  - public equities
universe:
  geographies:
    - United States
  marketCap: large-cap
  liquidity: high
  dataRequirements:
    - 10-K
    - 10-Q
marketRegime:
  preferred: any
  avoid: none
  posture: patient
```

---

## Signals

Also known as "What To Watch".

This section defines the data points, indicators, and patterns the investor monitors to identify opportunities. Signals are organized by category (fundamental, technical, sentiment, macro, alternative).

Each signal should explain:
- What it measures
- Why it matters to this investor
- What value or range is attractive
- Where to find the data

Example:

```markdown
## Signals

### Fundamental

- **Owner Earnings** (high weight): Net income + depreciation - maintenance
  capex. This is the real cash the business generates for its owner.
  We want businesses that produce growing owner earnings over time.
  Source: 10-K cash flow statement.

- **ROIC** (high weight, higher-is-better): Return on invested capital
  measures how efficiently the business deploys capital. We look for
  sustained ROIC above 15% over 5+ years.
  Source: calculated from income statement and balance sheet.

### Technical

- **Price to Book** (medium weight): We prefer buying below 1.5x book
  value for asset-heavy businesses. Not relevant for asset-light models.

### Sentiment

- **Insider Buying** (medium weight): When insiders buy with their own
  money, it signals conviction. We track Form 4 filings.
```

### Design Tokens

The `signals` section in the frontmatter defines all signal tokens, organized by category. Each signal has a weight, optional direction, threshold, source, and description.

```yaml
signals:
  fundamental:
    ownerEarnings:
      weight: high
      description: Net income + D&A - capex
    roic:
      weight: high
      direction: higher-is-better
      threshold: "> 15%"
  technical:
    priceToBook:
      weight: medium
      threshold: "< 1.5"
  sentiment:
    insiderBuying:
      weight: medium
      source: SEC Form 4
```

---

## Filters

Also known as "Screening Criteria" or "Gates".

This section defines the hard pass/fail criteria that an opportunity must pass before deeper analysis begins. Filters are binary: an opportunity either passes or is rejected.

Filters should explain:
- What the criterion is
- Why it is a hard gate (not just a preference)
- How to evaluate it

Example:

```markdown
## Filters

These are hard gates. If any required filter fails, stop and classify
as Pass or Too Hard.

- **Understandable** (required): Can we explain the business model,
  revenue drivers, and competitive position in one paragraph? If not,
  it is outside our circle of competence.

- **Durable Moat** (required): Does the business have a structural
  competitive advantage that will still matter in 10 years? Network
  effects, switching costs, brand, cost advantage, or regulatory
  position.

- **Consistent FCF** (required): Has the business generated positive
  free cash flow in at least 8 of the last 10 years?

- **Debt to Equity < 0.5** (required): We avoid businesses that
  require heavy leverage to generate returns.

- **Management Integrity** (required): Has management been honest
  with shareholders? Check for restatements, broken promises,
  excessive compensation.
```

### Design Tokens

The `filters` section in the frontmatter defines filter tokens as a flat map of filter names to their criteria.

```yaml
filters:
  understandable: required
  durableMoat: required
  consistentFCF: required
  debtToEquity: "< 0.5"
  managementIntegrity: required
```

---

## Analysis

Also known as "Evaluation Process" or "Due Diligence".

This section describes the step-by-step process for evaluating an opportunity that has passed the filters. It defines the questions to answer, the data to collect, and the framework for reaching a conclusion.

The analysis process should be specific enough that two agents applying it to the same opportunity would reach similar conclusions.

Example:

```markdown
## Analysis

### 1. Define The Business

- What does the company actually sell?
- Who pays and why do they choose it?
- What drives revenue and margins?
- Is this inside our circle of competence?

If the business cannot be explained simply, stop.

### 2. Judge Business Quality

Score the moat:
- Network effects, switching costs, brand, cost advantage
- Durability: will the moat still matter in 5-10 years?
- Returns: can the business earn high returns on incremental capital?
- Reinvestment: can it deploy more capital at attractive returns?
- Pricing power: can it raise prices without losing customers?

### 3. Review Management

- Are incentives aligned with long-term owners?
- Is capital allocation disciplined or empire-building?
- Does management communicate clearly and admit mistakes?

### 4. Estimate Intrinsic Value

Build a conservative valuation:
- Normalized owner earnings or free cash flow
- Conservative growth rate
- Terminal multiple or discount rate
- Output: conservative / base / optimistic value range
```

---

## Position Sizing

Also known as "Sizing".

This section defines how much capital to allocate to each position. It covers initial sizing, scaling rules, and portfolio-level constraints.

Example:

```markdown
## Position Sizing

- **Maximum single position**: 25% of portfolio at cost.
- **Target portfolio**: 10-15 concentrated positions.
- **Conviction threshold**: Only buy when conviction is high.
  No speculative positions.
- **Scaling**: Start with a half position. Add to full size
  only if the thesis strengthens over 1-2 quarters.
- **Cash reserve**: Always hold at least 10% cash for
  opportunities during market dislocations.
```

### Design Tokens

The `sizing` section in the frontmatter defines sizing parameters.

```yaml
sizing:
  maxPosition: 25%
  maxPortfolio: 15
  convictionThreshold: high
  scalingRule: half-then-add
  cashReserve: 10%
```

---

## Risk Management

Also known as "Risk".

This section defines how the investor manages downside risk: margin of safety requirements, drawdown tolerance, stop-loss rules, correlation limits, and portfolio-level risk constraints.

Example:

```markdown
## Risk Management

- **Margin of Safety**: Only buy when price is at least 30% below
  conservative intrinsic value estimate.
- **Drawdown tolerance**: We accept up to 50% drawdowns on individual
  positions if the thesis is intact. We do not sell because of price
  decline alone.
- **Stop-loss**: None. We sell when the thesis breaks, not when the
  price drops.
- **Correlation**: Avoid holding more than 3 positions in the same
  industry or with the same primary risk factor.
- **Leverage**: Never use margin. Never use options for leverage.
```

### Design Tokens

The `risk` section in the frontmatter defines risk parameters.

```yaml
risk:
  marginOfSafety: 30%
  maxDrawdown: 50%
  stopLoss: none
  maxCorrelatedPositions: 3
  leverage: none
```

---

## Execution

Also known as "Entry & Exit" or "Trading Rules".

This section defines the specific rules for entering and exiting positions: when to buy, when to sell, and how to handle edge cases.

Example:

```markdown
## Execution

### Buy Rules

- Price is clearly below conservative intrinsic value
- Business quality is high and moat is durable
- Management is trustworthy and aligned
- We can explain the thesis in one paragraph
- Position sizing fits within portfolio constraints

### Sell Rules

- Thesis is broken: moat deteriorated, management lost credibility,
  economics changed structurally
- Better opportunity: a clearly superior investment with similar
  or lower risk
- Position became too large: rebalance if a single position exceeds
  40% of portfolio due to appreciation
- Never sell solely because the price dropped

### Special Situations

- Spinoffs: evaluate the spun-off entity independently
- M&A: if our company is acquired, evaluate the consideration
- Dilution: if share count increases > 3% annually, reassess
```

---

## Monitoring

Also known as "Post-Purchase" or "Ongoing Review".

This section defines what to track after purchasing a position, how often to review, and what triggers a reassessment.

Example:

```markdown
## Monitoring

### Quarterly Review

- Revenue growth trajectory
- Margin trends (gross, operating, net)
- Free cash flow vs. reported earnings
- ROIC trend
- Share count changes
- Management commentary vs. prior guidance

### Annual Deep Review

- Moat durability: is the competitive position stronger or weaker?
- Capital allocation: did management deploy capital well?
- Valuation: where does the current price sit vs. intrinsic value?
- Thesis check: are the original reasons for buying still valid?

### Invalidation Triggers

Immediately reassess if:
- Revenue declines > 10% in a single quarter (non-cyclical)
- Gross margin compresses > 500bps year-over-year
- CEO or CFO departure
- Accounting restatement or SEC investigation
- Major customer loss (> 15% of revenue)
- Debt covenant breach or credit downgrade to junk
```

### Design Tokens

The `metrics` section in the frontmatter defines key metrics to track with their review frequency and alert conditions.

```yaml
metrics:
  revenueGrowth:
    frequency: quarterly
    alert: "< -10% single quarter"
  grossMargin:
    frequency: quarterly
    alert: "compress > 500bps YoY"
  freeCashFlow:
    frequency: quarterly
  roic:
    frequency: annual
  shareCount:
    frequency: quarterly
    alert: "> 3% annual dilution"
```

---

## Playbooks

Also known as "Decision Templates".

This section defines named decision templates for common scenarios. Each playbook is a structured output format that the agent produces when applying the investment model.

Example:

```markdown
## Playbooks

### Investment Memo

When evaluating a new opportunity, produce:

```md
# Investment Memo: [Company]

## Verdict
Buy / Watchlist / Pass / Too Hard

## One-Line Thesis

## Business Summary

## Circle Of Competence

## Business Quality
- Moat:
- Durability:
- Returns:
- Pricing power:

## Management And Capital Allocation

## Intrinsic Value Range
- Conservative:
- Base:
- Optimistic:

## Margin Of Safety

## Main Risks

## Invalidation Triggers
```

### Holding Review

When reviewing an existing position, produce:

```md
# Holding Review: [Company]

## Thesis Status: Intact / Weakening / Broken

## Key Changes Since Last Review

## Metrics Dashboard
| Metric | Current | Prior | Trend |
|--------|---------|-------|-------|

## Action
Add / Hold / Trim / Sell
```
```

### Design Tokens

The `playbooks` section in the frontmatter maps playbook names to their configuration. Playbook tokens may reference other tokens.

```yaml
playbooks:
  investmentMemo:
    verdictOptions: "Buy / Watchlist / Pass / Too Hard"
    requiredSections: "business,quality,valuation,risk,invalidation"
  holdingReview:
    verdictOptions: "Add / Hold / Trim / Sell"
    frequency: quarterly
```

---

## Do's and Don'ts

Also known as "Behavioral Guardrails".

This section provides practical guidelines and common pitfalls. These act as guardrails when making investment decisions.

Example:

```markdown
## Do's and Don'ts

- Do use primary sources (10-K, 10-Q, earnings transcripts) over summaries
- Do estimate value as a range, never as a single precise number
- Do prefer boring durability over exciting fragility
- Do admit when something is outside the circle of competence
- Don't confuse cheap multiples with true value
- Don't overestimate moat durability based on past success
- Don't use aggressive growth assumptions to justify a purchase
- Don't ignore leverage and refinancing risk
- Don't trust adjusted earnings without checking cash conversion
- Don't force a decision when critical data is missing — say "Too Hard"
- Don't fall in love with a famous investor's past holding
- Don't sell solely because the price dropped — sell when the thesis breaks
```

---

## Source Notes

Also known as "Sources" or "References".

This section lists the primary materials used to distill the model and helps agents separate well-sourced rules from loose internet summaries. Prefer original books, letters, interviews, transcripts, filings, and fund memos over secondary blog posts.

Example:

```markdown
## Source Notes

This model is distilled from:

- Warren Buffett shareholder letters
- Berkshire Hathaway annual meeting transcripts
- Charlie Munger, Poor Charlie's Almanack

When attributing a specific rule or quote, cite the exact source.
```

### Design Tokens

The `sources` token in the frontmatter should include the core references used to construct the model.

```yaml
sources:
  - Warren Buffett shareholder letters
  - Berkshire Hathaway annual meeting transcripts
  - Charlie Munger, Poor Charlie's Almanack
```

---

# Recommended Token Names (Non-Normative)

The following names are commonly used across investment models. They are not required but are provided as guidance for consistency.

**Signals (fundamental):** `ownerEarnings`, `roic`, `roe`, `grossMargin`, `operatingMargin`, `fcfYield`, `revenueGrowth`, `debtToEquity`, `priceToEarnings`, `priceToBook`, `evToEbitda`

**Signals (technical):** `movingAverage`, `relativeStrength`, `rsi`, `volume`, `momentum`, `support`, `resistance`, `baseQuality`, `breakoutLevel`

**Signals (macro):** `yieldCurve`, `creditSpread`, `vix`, `inflationRate`, `gdpGrowth`, `liquidityCycle`, `policyShift`, `currencyTrend`

**Signals (sentiment/positioning):** `insiderBuying`, `shortInterest`, `analystConsensus`, `fundFlows`, `crowding`, `narrativeConsensus`, `marketPsychology`

**Filters:** `understandable`, `durableMoat`, `consistentFCF`, `debtLimit`, `managementIntegrity`, `minRevenue`, `minMargin`, `circleOfCompetence`, `trendConfirmed`, `volumeConfirmed`, `baseConstructive`, `cycleFavorable`

**Sizing:** `maxPosition`, `maxPortfolio`, `convictionThreshold`, `scalingRule`, `pyramidRule`, `cashReserve`, `kellyFraction`, `riskPerTrade`

**Risk:** `marginOfSafety`, `maxDrawdown`, `stopLoss`, `trailingStop`, `maxCorrelatedPositions`, `leverage`, `varLimit`, `correlationLimit`, `positionCutRule`

**Metrics:** `revenueGrowth`, `grossMargin`, `operatingMargin`, `freeCashFlow`, `roic`, `shareCount`, `debtMaturity`

---

# Consumer Behavior for Unknown Content

When an INVEST.md consumer encounters content not defined by this spec:

| Scenario | Behavior | Example |
|---|---|---|
| Unknown section heading | Preserve; do not error | `## Tax Strategy` |
| Unknown signal category | Accept if values are valid | `alternative: { satelliteData: ... }` |
| Unknown filter name | Accept as valid filter | `esgScore: required` |
| Unknown sizing parameter | Accept; store as string | `pyramidRule: "add 10% per level"` |
| Unknown risk parameter | Accept with warning | `tailRiskHedge: "5% allocation"` |
| Unknown playbook property | Accept with warning | `format: "slide-deck"` |
| Duplicate section heading | Error; reject the file | Two `## Signals` headings |

---

# File Naming Convention

INVEST.md files should follow these naming conventions:

| Pattern | Example | Description |
|---|---|---|
| `INVEST.md` | `INVEST.md` | Root investment model for a project or agent |
| `<investor>.invest.md` | `buffett.invest.md` | Named investor model |
| `<style>.invest.md` | `value.invest.md` | Style-based model |
| `<strategy>.invest.md` | `dividend-growth.invest.md` | Strategy-specific model |

---

# Relationship to Investor Skills

The primary product concept is the **Investor Skill**: a `SKILL.md` package that gives an AI finance agent a portable judgment system.

`INVEST.md` is an optional investment-system schema used inside an investor skill. It is useful when the judgment system is large enough to keep separate from the skill instructions.

When separated:

- `SKILL.md` is the entry point: trigger conditions, use cases, inputs, process, output format, and guardrails
- `INVEST.md` or `invest.md` is the supporting schema: worldview, universe, regime, signals, filters, sizing, risk, monitoring, and playbooks

A skill may reference an investment schema file:

```yaml
---
name: buffett
description: Use when evaluating a business through Buffett-style ownership, moat, owner earnings, and margin-of-safety judgment.
invest: ./invest.md
---
```

For simpler skills, the investment schema can be embedded directly in `SKILL.md` instead of stored as a separate file.
