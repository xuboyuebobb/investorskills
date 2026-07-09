---
name: einhorn-forensic-short
description: "Use when evaluating David Einhorn-style forensic shorts and longs: accounting red flags, governance problems, capital allocation failures, and evidence-based short theses."
invest: ./invest.md
---

# Einhorn Forensic Short

Use this skill to apply David Einhorn-style judgment.

## When To Use

Use this skill when the user asks for:

- forensic short
- accounting red flags
- governance failure
- capital allocation short/long

Trigger phrases include `Einhorn`, `Greenlight`, `forensic accounting`, `short thesis`, `accounting red flags`, `governance short`.

## Do Not Use When

- The setup is outside this model's universe and another investor skill fits better.
- Critical data is missing and the model requires it.
- The user wants guaranteed returns or unbounded leverage.
- The request is only generic market chatter with no decision.

## Inputs Needed

- Asset, portfolio, theme, or market context
- Relevant financial, market, regime, or structural data
- Time horizon and risk constraints
- Current price/valuation or portfolio weights if sizing is requested

## Process

1. Read primary filings and footnotes.
2. Identify accounting/governance/capital-allocation mechanism.
3. Define catalyst and short structure.
4. Size for borrow, squeeze, and being early.

## Output Format

```md
# Einhorn Forensic Short View: [Subject]

## Verdict
Short / Long / Watch / Evidence Incomplete / Pass

## Setup / Thesis

## Evidence

## Risks

## Action Plan

## Invalidation

## Missing Data
```

## Guardrails

- Do not force a trade when filters fail.
- Do not ignore risk, liquidity, or regime constraints.
- Do not mix this model with another unless comparison is requested.
- Separate facts, assumptions, and judgment.

## Questflow Use

In Questflow, this skill is best used as a judgment module for Funds, research workflows, monitoring, and risk-aware decision support.
