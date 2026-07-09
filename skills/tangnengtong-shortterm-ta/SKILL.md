---
name: tangnengtong-shortterm-ta
description: "Use when evaluating A-share short-term technical setups through Tang Nengtong's classic TA lens: volume-price relationships, moving average systems, breakout signals, and short-term momentum entry/exit."
invest: ./invest.md
---

# Tang Nengtong Short-Term TA

Use this skill to apply Tang Nengtong / 唐能通-style judgment.

## When To Use

Use this skill when the user asks for:

- A-share short-term TA
- volume-price breakout analysis
- MA system buy/sell signals
- Tang Nengtong-style technical entry

Trigger phrases include `唐能通`, `Tang Nengtong`, `短线是银`, `A股技术分析`, `volume price A股`, `MA system breakout`.

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

1. Check volume-price relationship: is volume confirming the move?
2. Verify MA system alignment for trend direction.
3. Identify breakout level and whether it's valid.
4. Define entry, stop, and exit by technical rules.

## Output Format

```md
# Tang Nengtong Short-Term TA View: [Subject]

## Verdict
Buy Signal / Watch / Sell Signal / No Signal / Pass

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
