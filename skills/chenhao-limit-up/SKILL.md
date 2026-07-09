---
name: chenhao-limit-up
description: "Use when evaluating A-share limit-up (涨停板) setups through Chen Hao's sentiment and momentum lens: market emotion cycles, board strength, follow-through, and short-term aggressive momentum trading."
invest: ./invest.md
---

# Chen Hao Limit-Up Sentiment

Use this skill to apply Chen Hao / 陈浩-style judgment.

## When To Use

Use this skill when the user asks for:

- A股涨停板 analysis
- market sentiment cycle diagnosis
- board strength and follow-through
- Chen Hao-style aggressive momentum

Trigger phrases include `陈浩`, `Chen Hao`, `涨停板`, `limit up A股`, `市场情绪`, `板强`, `情绪周期`.

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

1. Diagnose market sentiment cycle: fear, recovery, greed, euphoria.
2. Rank board/sector strength and identify the leader.
3. Judge limit-up quality: genuine demand vs retail chasing.
4. Define entry, follow-through confirmation, and exit.

## Output Format

```md
# Chen Hao Limit-Up Sentiment View: [Subject]

## Verdict
Aggressive Buy / Watch Board / Sentiment Cooling / Pass

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
