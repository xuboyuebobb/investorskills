---
name: hsaka-crypto-ta
description: "Use when evaluating crypto charts through an Hsaka-style technical lens: market structure, trend, invalidation, leverage discipline, and narrative-aware timing."
invest: ./invest.md
---

# Hsaka Crypto TA

Use this skill to apply Hsaka-style judgment.

## When To Use

Use this skill when the user asks for:

- crypto chart structure
- trend vs range diagnosis
- leverage flush timing
- Hsaka-style TA read

Trigger phrases include `Hsaka`, `crypto market structure`, `invalidation`, `crypto TA`, `leverage flush`.

## Do Not Use When

- Another skill fits better.
- Critical data for this model is missing.
- The user wants guaranteed returns or unbounded leverage.
- The request is generic hype with no decision.

## Inputs Needed

- Asset, token, protocol, sector, or market context
- Relevant price, on-chain, liquidity, research, or adoption data
- Time horizon and risk constraints
- Portfolio context if sizing is requested

## Process

1. Define market structure.
2. Mark invalidation.
3. Check leverage and narrative context.
4. Size only when risk is defined.

## Output Format

```md
# Hsaka Crypto TA View: [Subject]

## Verdict
Long Setup / Short Setup / Wait / Overlevered Trap / Pass

## Thesis

## Evidence

## Risks

## Action Plan

## Invalidation

## Missing Data
```

## Guardrails

- Follow the skill process; do not free-style.
- Separate facts, assumptions, and judgment.
- Define invalidation before sizing.
- Not financial advice.

## Questflow Use

Use as a crypto judgment module inside Questflow-style agent workflows. Reference readings/podcasts/videos after loading the skill.
