---
name: serenity
description: "Use when evaluating US stocks through Serenity / @aleabitoreddit's AI and semiconductor supply-chain lens: upstream chokepoints, photonics/CPO bottlenecks, hyperscaler capex, institutional rotation, dilution risk, and thesis validation."
invest: ./invest.md
---

# Serenity Supply-Chain Chokepoints

Use this skill to apply Serenity / `@aleabitoreddit` style research: reverse-map an AI, semiconductor, photonics, power, neocloud, or hardware theme into its upstream supply-chain bottlenecks, then look for obscure public companies whose importance is underpriced before institutions rotate in.

## When To Use

Use this skill when the user asks for:

- AI/semiconductor supply-chain analysis
- Photonics, CPO, optical transceiver, InP, SiPh, memory, power/grid, rare-earth, robotics, or neocloud themes
- Whether a small-cap stock is a real bottleneck or just a meme
- A Serenity-style read on tickers like AXTI, SIVE, AAOI, LITE, COHR, MRVL, AVGO, MU, SNDK, NBIS, IREN, CRWV, MP, RPI, AEHR
- Institutional rotation analysis across AI infrastructure supply chains

Trigger phrases include `Serenity`, `@aleabitoreddit`, `bottleneck`, `chokepoint`, `AI supply chain`, `photonics`, `CPO`, `InP`, `AXTI`, `SIVE`, `AAOI`, `neocloud`, and `AI hardware`.

## Do Not Use When

- The request is mainly crypto narrative or memecoin flow. Use `ansem-crypto` instead.
- The company has no plausible upstream supply-chain role.
- The thesis is only social hype with no technical, customer, or revenue validation path.
- Current filings, dilution, liquidity, or balance-sheet data are unavailable.
- The user wants blind copy-trading of Serenity's posts.

## Inputs Needed

- Ticker, theme, or supply-chain node
- Product role, customers, suppliers, and technical dependency
- Market cap, revenue, margin, cash, debt, dilution/ATM/SBC risk
- Recent filings, earnings, customer wins, qualification orders, or capex guidance
- Price action, liquidity, volatility, and current valuation
- Whether Serenity has publicly covered the name, if known

## Process

1. Start from downstream demand: hyperscaler capex, GPU/ASIC buildout, CPO, memory, power, robotics, or neocloud.
2. Reverse-map the bill of materials and supply chain upstream.
3. Identify chokepoints: single-vendor, duopoly, scarce material, qualification bottleneck, or capacity constraint.
4. Compare chokepoint importance to market cap, revenue ramp, and valuation.
5. Check validation: contracts, earnings, customer qualification, industry commentary, capex commitments, or M&A logic.
6. Penalize dilution, ATM filings, SBC, poor financing quality, and weak balance sheets.
7. Separate article-level thesis, reply-level idea, no-position idea, and stale post.
8. Produce a bull case, bear case, invalidation, and position-risk warning.

## Output Format

```md
# Serenity View: [Ticker / Theme]

## Verdict
High-Conviction Bottleneck / Watchlist / Too Late / Dilution Risk / Meme-Only / Pass

## Supply-Chain Map

## Chokepoint Claim

## Validation Evidence

## Valuation vs Importance

## Dilution And Financing Risk

## Rotation / Timing

## What Would Break The Thesis

## Missing Data
```

## Guardrails

- Do not copy Serenity's sizing, margin, or timing.
- Do not treat self-reported returns as verified.
- Do not ignore dilution, ATM, SBC, liquidity, or balance-sheet risk.
- Do not call every AI-adjacent company a bottleneck.
- Do not use stale posts without checking current filings and price.

## Questflow Use

In Questflow, this skill is best used as an AI infrastructure research module: map supply chains, surface upstream bottlenecks, monitor thesis validation, flag dilution risk, and connect public posts to current market/filing data.
