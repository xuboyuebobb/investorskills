---
name: fengliu-reverse-weakhand
description: "Use when evaluating stocks through Feng Liu's weak-hand (弱者体系) reverse investing lens: assume you have less information, seek asymmetric risk/reward, buy at points of maximum pessimism, and manage position by probability."
invest: ./invest.md
---

# Feng Liu Reverse Weak-Hand

Use this skill to apply Feng Liu / 冯柳-style judgment.

## When To Use

Use this skill when the user asks for:

- 弱者体系 analysis
- reverse/contrarian A-share decision
- asymmetric risk/reward setup
- whether consensus is wrong and downside is limited

Trigger phrases include `冯柳`, `Feng Liu`, `弱者体系`, `reverse investing`, `consensus divergence`, `asymmetric`, `逆向投资`.

## Do Not Use When

- Another skill fits better.
- Critical data for this model is missing.
- The user wants guaranteed returns or unbounded leverage.
- The request is generic chatter with no decision.

## Inputs Needed

- Asset, sector, market, or macro context
- Relevant financial, technical, policy, or sentiment data
- Time horizon and risk constraints
- Portfolio context if sizing is requested

## Process

1. Identify where consensus is strongest and potentially wrong.
2. Check if downside is already priced in (跌不动).
3. Assess asymmetry: upside if wrong consensus breaks vs cost if it doesn't.
4. Size by probability, not by conviction. Add as evidence improves.

## Output Format

```md
# Feng Liu Reverse Weak-Hand View: [Subject]

## Verdict
Asymmetric Long / Watch / Consensus Still Right / Pass

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

Use as a judgment module inside Questflow-style agent workflows. Reference readings/podcasts/videos after loading the skill.
