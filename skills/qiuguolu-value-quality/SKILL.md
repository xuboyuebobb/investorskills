---
name: qiuguolu-value-quality
description: "Use when evaluating stocks through Qiu Guolu's value-quality lens: stay within circle of competence, focus on industry leaders with structural advantages, and demand simple clear thesis before investing."
invest: ./invest.md
---

# Qiu Guolu Value Quality

Use this skill to apply Qiu Guolu / 邱国鹭-style judgment.

## When To Use

Use this skill when the user asks for:

- Qiu Guolu-style value analysis
- whether a company is an industry leader worth owning
- simple clear thesis evaluation
- A-share quality stock screening

Trigger phrases include `邱国鹭`, `Qiu Guolu`, `投资中最简单的事`, `行业龙头`, `value quality A股`, `简单清晰`.

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

1. Identify the industry leader with structural advantage.
2. Write the thesis in 2-3 sentences. If you can't, pass.
3. Check valuation relative to quality and growth.
4. Own only if the thesis is simple and the leader is clear.

## Output Format

```md
# Qiu Guolu Value Quality View: [Subject]

## Verdict
Own Leader / Watch / Too Complex / Not A Leader / Pass

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
