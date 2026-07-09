---
name: duanyongping-benfen-value
description: "Use when evaluating stocks through Duan Yongping's benfen (本分) value investing lens: good business, right price, long hold, understand what you own, and stay within your circle of competence."
invest: ./invest.md
---

# Duan Yongping Benfen Value

Use this skill to apply Duan Yongping / 段永平-style judgment.

## When To Use

Use this skill when the user asks for:

- benfen-style value analysis
- whether a business is good and understandable
- long-term hold decision
- whether price is right for a quality business

Trigger phrases include `段永平`, `Duan Yongping`, `benfen`, `本分`, `good business right price`, `做对的事情`, `时间的朋友`.

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

1. Ask: do I understand this business? If not, stop.
2. Judge: is it a good business? Moat, pricing power, durable economics.
3. Check: is the price right? Is there margin of safety?
4. Verify: is management honest and aligned?
5. Decide: if all pass, own it and hold. If any fails, pass.

## Output Format

```md
# Duan Yongping Benfen Value View: [Subject]

## Verdict
Own / Watch / Too Hard / Too Expensive / Pass

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
