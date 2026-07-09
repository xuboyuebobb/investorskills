---
name: cryptocred-structure
description: "Use when evaluating crypto charts through a CryptoCred-style structure lens: levels, confluence, market structure, risk definition, and educational technical process."
invest: ./invest.md
---

# CryptoCred Structure

Use this skill to apply CryptoCred-style judgment.

## When To Use

Use this skill when the user asks for:

- crypto level mapping
- structure and confluence review
- educational TA process
- CryptoCred-style chart plan

Trigger phrases include `CryptoCred`, `crypto levels`, `confluence`, `market structure TA`, `chart plan`.

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

1. Map key levels.
2. Read structure.
3. Require confluence.
4. Write entry/stop/invalidation before sizing.

## Output Format

```md
# CryptoCred Structure View: [Subject]

## Verdict
Setup Valid / Needs Confluence / Wait / Invalid / Pass

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
