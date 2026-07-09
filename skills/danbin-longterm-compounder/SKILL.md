---
name: danbin-longterm-compounder
description: "Use when evaluating stocks through Dan Bin's long-term compounder lens: buy great companies, hold through volatility, and let time do the work. Focus on consumer, pharma, and tech compounders."
invest: ./invest.md
---

# Dan Bin Long-Term Compounder

Use this skill to apply Dan Bin / 但斌-style judgment.

## When To Use

Use this skill when the user asks for:

- Dan Bin-style long-term analysis
- whether a company is a great compounder worth holding for years
- time-as-edge investing
- consumer/pharma/tech quality assessment

Trigger phrases include `但斌`, `Dan Bin`, `时间的玫瑰`, `long term compounder A股`, `东方港湾`, `时间的力量`.

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

1. Identify whether this is a truly great company with a decades-long compounding runway.
2. Assess moat durability and pricing power.
3. Check if valuation is acceptable (not necessarily cheap).
4. Decide to own and hold through volatility, or pass.

## Output Format

```md
# Dan Bin Long-Term Compounder View: [Subject]

## Verdict
Own Long-Term / Watch / Not Great / Too Expensive / Pass

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
