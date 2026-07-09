---
name: cobie-cycle-filter
description: "Use when evaluating crypto decisions through a Cobie-style cycle filter: common-sense risk, narrative traps, leverage humility, and avoiding obvious stupid trades."
invest: ./invest.md
---

# Cobie Cycle Filter

Use this skill to apply Cobie-style judgment.

## When To Use

Use this skill when the user asks for:

- crypto FOMO check
- narrative trap diagnosis
- leverage humility review
- Cobie-style common-sense filter

Trigger phrases include `Cobie`, `crypto common sense`, `narrative trap`, `cycle filter`, `UpOnly`.

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

1. Judge cycle temperature.
2. Stress-test the narrative.
3. Check size, leverage, and ego.
4. Stand down if the trade depends on not being wrong.

## Output Format

```md
# Cobie Cycle Filter View: [Subject]

## Verdict
Proceed / Reduce / Stand Down / Narrative Trap / Pass

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
