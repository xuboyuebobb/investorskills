![Investor Skills - mental models from history's greatest investors](assets/social-poster.png)

# Investor Skills

Mental models from history's greatest investors, structured for AI agents.

[INVEST.md Spec](docs/spec.md) · [Examples](examples/) · [Skills](skills/) · [Contributing](#contributing)

Investor Skills is an open-source library that turns durable investing judgment into portable, structured formats. It collects how great investors think, filter opportunities, size risk, and act under uncertainty — then structures those patterns so humans can study them and AI agents can apply them.

## Two Formats

### INVEST.md — Investment Decision Systems

[INVEST.md](docs/spec.md) is a format specification for describing an investment decision system to AI agents. Like [DESIGN.md](https://github.com/google-labs-code/design.md) gives agents a persistent understanding of a visual identity, INVEST.md gives agents a persistent understanding of an investment identity.

An INVEST.md file combines:

- **YAML tokens** (machine-readable): signals, filters, sizing rules, risk parameters, key metrics
- **Markdown prose** (human-readable): philosophy, analysis process, execution rules, behavioral guardrails

```yaml
---
name: Buffett/Munger Value Investing
style: value+quality
timeHorizon: 5-10 years
signals:
  fundamental:
    roic:
      weight: high
      direction: higher-is-better
      threshold: "> 15%"
filters:
  durableMoat: required
  consistentFCF: required
sizing:
  maxPosition: 25%
  maxPortfolio: 15
risk:
  marginOfSafety: 30%
  stopLoss: none
---
```

See the [full specification](docs/spec.md) and [example](examples/buffett.invest.md).

### SKILL.md — Agent Skills

Skills are portable agent instructions that define **when** and **why** to apply an investment model. Each skill lives in `skills/<name>/SKILL.md` and can reference an INVEST.md file for the structured decision parameters.

```yaml
---
name: value-investing
description: Use when evaluating a business through Buffett/Munger-style value investing.
invest: ./buffett.invest.md
---
```

See [existing skills](skills/).

## Repo Structure

```
investorskills/
├── docs/
│   └── spec.md              # INVEST.md format specification
├── examples/
│   └── buffett.invest.md    # Example: Buffett/Munger value investing
├── skills/
│   └── value-investing/     # Agent skill: value investing
│       └── SKILL.md
├── README.md
└── LICENSE
```

## Quick Start

### Use an INVEST.md directly

Copy any `.invest.md` file into your project. AI agents that understand the [INVEST.md spec](docs/spec.md) can apply the investment model to evaluate opportunities.

### Install as a skill

```bash
# Install all skills
npx skills add https://github.com/xuboyuebobb/investorskills

# Install a single skill
npx skills add https://github.com/xuboyuebobb/investorskills --skill "value-investing"
```

### Use standalone

Copy any `SKILL.md` or `INVEST.md` into ChatGPT, Codex, Cursor, Claude, or another agent conversation.

## Available Models

| File | Investor | Style | Description |
|---|---|---|---|
| [`buffett.invest.md`](examples/buffett.invest.md) | Buffett, Munger, Graham | value+quality | Long-term ownership of durable businesses bought below intrinsic value |

## Available Skills

| Skill | Install name | Description |
|---|---|---|
| [`value-investing`](skills/value-investing/) | `value-investing` | Buffett/Munger-style business-quality underwriting: durable moat, owner earnings, management quality, margin of safety, and downside-first risk review |

## Contributing

### Adding an INVEST.md model

1. Create `<name>.invest.md` in `examples/`
2. Follow the [specification](docs/spec.md)
3. Include YAML frontmatter with tokens and markdown body with rationale
4. Add an entry to the Available Models table above

### Adding a skill

1. Create `skills/<skill-name>/SKILL.md`
2. Include frontmatter with name, description, and optional `invest` reference
3. Define when to use, inputs, process, and output format
4. Add an entry to the Available Skills table above

### Planned models

- `lynch.invest.md` — Peter Lynch: invest in what you know, PEG ratio, stock categories
- `dalio.invest.md` — Ray Dalio: all-weather, risk parity, macro regime identification
- `soros.invest.md` — George Soros: reflexivity, macro, asymmetric bets
- `simons.invest.md` — Jim Simons: quantitative, statistical arbitrage, signal processing
- `greenblatt.invest.md` — Joel Greenblatt: magic formula, special situations, spinoffs
- `marks.invest.md` — Howard Marks: second-level thinking, cycles, risk assessment
- `templeton.invest.md` — John Templeton: contrarian, global, maximum pessimism

## Why

Most investing content is passive: books, interviews, letters, podcasts, clips, and commentary.

The useful part is operational:

- What does this investor notice before others?
- What questions do they ask every time?
- What data do they trust?
- What do they ignore?
- What makes them act?
- What would their agent scan for every day?

Investor Skills extracts those decision patterns into software-shaped instructions.

## Relationship to DESIGN.md

[DESIGN.md](https://github.com/google-labs-code/design.md) gives AI agents a persistent understanding of a **visual identity** — colors, typography, layout, components.

INVEST.md gives AI agents a persistent understanding of an **investment identity** — signals, filters, analysis, sizing, risk.

Both use the same pattern: YAML tokens (machine-readable parameters) + markdown prose (human-readable rationale). Both are plain-text, version-controllable, and agent-portable.

## License

MIT
