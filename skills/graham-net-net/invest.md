---
version: alpha
name: Graham Net-Net Value
slug: graham-net-net
aliases:
  - Benjamin Graham
  - Net-Net
  - Intelligent Investor
description: Net-current-asset value, statistical deep value, margin of safety, and balance-sheet-first investing
investor: Benjamin Graham
style: value+deep-value
timeHorizon: 1-3 years
decisionCadence: quarterly
assetClasses:
  - public equities
circleOfCompetence:
  - net-nets
  - working capital analysis
  - liquidation value
  - statistical cheapness
universe:
  geographies:
    - global
  instruments:
    - relevant liquid instruments in scope
  liquidity: medium-high
  dataRequirements:
    - primary financial and market data for the model
marketRegime:
  preferred: conditions where this model's edge is active
  avoid: conditions outside competence or without required data
  posture: model-specific and risk-aware
signals:
  core:
    primaryEdge:
      weight: high
      frequency: quarterly
      source: model-specific data
      description: Main edge of the investor model
filters:
  inUniverse: required
  evidenceSufficient: required
  riskDefined: required
  outsideCompetence: disqualifier
sizing:
  maxPosition: risk- and model-adjusted
  maxPortfolio: consistent with model concentration style
  convictionThreshold: high
  scalingRule: add only as evidence and risk/reward improve
risk:
  stopLoss: thesis- or structure-based
  maxDrawdown: model-aware
  correlationLimit: avoid hidden factor concentration
  leverage: limited or none unless model explicitly allows
  positionCutRule: exit when thesis, structure, or risk budget breaks
metrics:
  thesisHealth:
    frequency: quarterly
    alert: core evidence weakens
  riskBudget:
    frequency: quarterly
    alert: risk exceeds plan
playbooks:
  decisionMemo:
    verdictOptions: "Buy Basket / Buy Single / Watch / Asset Trap / Pass"
    requiredSections: thesis,evidence,risk,action,invalidation
sources:
  - docs/reading-list.md
  - Benjamin Graham, The Intelligent Investor
  - Security Analysis
  - Graham-Newman partnership history
---

# Graham Net-Net Value

Buy assets for less than they are worth, with a margin of safety large enough that imperfect analysis still protects capital.

## Philosophy

Buy assets for less than they are worth, with a margin of safety large enough that imperfect analysis still protects capital.

## Universe & Regime

- **Asset classes**: public equities.
- **Universe**: Opportunities inside the circle of competence listed above.
- **Preferred regime**: Where the model's edge is active.
- **Avoid**: Outside competence, missing data, or fatal risk structure.
- **Posture**: Risk-aware and evidence-driven.

## Signals

- **ncavDiscount** (high): Price vs net current asset value.
- **balanceSheetProtection** (high): Cash, working capital, low debt.
- **earningsStabilitySecondary** (medium): Helpful but not required for pure net-nets.
- **diversification** (high): Basket approach for statistical bargains.

## Filters

- **discountToNCAVOrAssets** (required)
- **debtNotFatal** (required)
- **fraudRiskHigh** (disqualifier)
- **assetsIllusory** (disqualifier)

## Analysis

1. Calculate NCAV / tangible asset value.
2. Haircut dubious assets and check liabilities.
3. Prefer a basket of discounts rather than one story stock.
4. Exit when price converges to value or assets impair.

## Position Sizing

- **Initial size**: Only after filters pass and risk is defined.
- **Add rule**: Add as evidence improves and risk/reward remains attractive.
- **Max size**: Constrained by model style and portfolio risk.
- **Cash rule**: Cash or neutrality is valid when no setup clears the bar.

## Risk Management

- **Primary risk**: Applying the model outside its edge or without evidence.
- **Stop / invalidation**: Thesis, structure, or risk-budget based.
- **Correlation**: Avoid hidden concentration in one factor.
- **Leverage**: Limited unless the model explicitly supports it.

## Execution

### Entry Rules

1. Setup is inside universe.
2. Core signals support action.
3. Filters pass.
4. Risk and invalidation are defined.

### Exit Rules

1. Thesis breaks.
2. Evidence reverses.
3. Risk budget is breached.
4. Better opportunity appears inside the model.

## Monitoring

- **Cadence**: quarterly.
- **Metrics**: Core evidence, risk budget, valuation/regime/context as relevant.
- **Alerts**: Invalidation triggers and missing critical data.

## Playbooks

### Decision Memo

Return one of: Buy Basket / Buy Single / Watch / Asset Trap / Pass. Include thesis, evidence, risks, action plan, and invalidation.

## Canonical Cases

- **Net-current-asset value bargains**: buying below liquidation-style working capital value.
- **Diversified cheap stock baskets**: Graham's statistical approach reduces single-name risk.
- **Margin of safety doctrine**: price protection as the first principle of value investing.

## Do's and Don'ts

- Do stay inside the model's edge.
- Do demand evidence before sizing.
- Do define invalidation.
- Don't force trades.
- Don't ignore risk structure.
- Don't confuse narrative with proof.



## Reading List

- The Intelligent Investor: https://www.amazon.com/Intelligent-Investor-Definitive-Investing-Essentials/dp/0060555661
- Security Analysis: https://www.amazon.com/Security-Analysis-Sixth-Foreword-Buffett/dp/0071592539
- Superinvestors essay: https://www8.gsb.columbia.edu/articles/columbia-business/superinvestors
- Shared reading list: ../../docs/reading-list.md

## Source Notes

This model is distilled from:

- Benjamin Graham, The Intelligent Investor
- Security Analysis
- Graham-Newman partnership history

Use primary sources when possible. This is a judgment framework, not financial advice.
