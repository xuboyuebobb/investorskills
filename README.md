![Investor Skills - portable judgment systems for AI finance agents](assets/social-poster.png)

# Investor Skills

**Investor Skills are portable judgment systems for AI finance agents.**

Run these investor skills inside [Questflow](https://questflow.ai), the AI Finance Agent for financial markets.

[Investor Skill Template](templates/skill.template.md) · [Investment Schema](docs/spec.md) · [Reading List](docs/reading-list.md) · [Podcast List](docs/podcast-list.md) · [YouTube List](docs/youtube-list.md) · [Templates](templates/) · [Examples](examples/) · [Contributing](#contributing)

Investor Skills is an open-source library that turns durable investing judgment into portable, structured formats. It collects how great investors think, filter opportunities, size risk, and act under uncertainty — then structures those patterns so humans can study them and AI finance agents can apply them.

It is also a public template layer for Questflow-style AI Finance Agents: top investor judgment becomes skills that can explain, monitor, size, invalidate, and execute within explicit risk rules.

## Built For Questflow, Portable Everywhere

Investor Skills are plain-text skill packages. You can use them in Claude Code, Codex, Cursor, OpenCode, or any other agent harness that can read `SKILL.md` instructions.

They are tailored for Questflow's financial harness: models, skills, plugins, and execution accounts working together across market data, portfolio context, broker/exchange/wallet permissions, and fund workflows.

### Open-source skills

This repo is the free public layer:
- portable investor judgment systems
- templates and schemas
- [reading list](docs/reading-list.md), [podcast list](docs/podcast-list.md), and [YouTube list](docs/youtube-list.md) as reference material for each skill

Use a skill first, then use readings/podcasts/videos as source material to understand, stress-test, and enrich that skill.

### Questflow exclusive skills

Questflow also includes **exclusive closed-source skills** not published here.

Those exclusive skills are distilled from top traders by labeling judgment across real trades: what they watched, why they entered, how they sized, what would invalidate the thesis, and how they reviewed the outcome. They are available to paid members inside [Questflow](https://questflow.ai).

The free open-source skills here should already feel excellent for study, research, and agent workflows. Questflow exclusives go further for execution-grade, trade-labeled judgment.

[Run these skills in Questflow](https://questflow.ai)

## Investor Skill Packages

An **Investor Skill** is one agent skill package. It can embed or reference a structured investment judgment system.

```text
skills/livermore/
├── SKILL.md    # when to use, inputs, process, output, guardrails
└── invest.md   # optional investment system schema: signals, filters, sizing, risk
```

For simple skills, put the investment system directly inside `SKILL.md`. For larger or reusable models, keep it as `invest.md` and reference it from the skill frontmatter.

### SKILL.md — The Agent Entry Point

`SKILL.md` is the public interface of an investor skill. It tells the agent when to use the model, what inputs are required, how to apply the process, what to avoid, and how to format the answer.

```yaml
---
name: buffett
description: Use when evaluating a business through Buffett-style ownership, moat, owner earnings, and margin-of-safety judgment.
invest: ./invest.md
---
```

Use [`templates/skill.template.md`](templates/skill.template.md) to create new packaged skills.

### Investment Schema — The Judgment System

The investment schema is the structured judgment system inside an investor skill. It defines the investor's worldview, universe, market regime, signals, filters, sizing, risk, monitoring, and playbooks.

[`docs/spec.md`](docs/spec.md) documents the optional standalone `INVEST.md` format for teams that want to store the investment system as a separate file. Conceptually, `INVEST.md` is not a separate product from skills; it is the investment schema used inside investor skills.

An INVEST.md file combines:

- **YAML tokens** (machine-readable): signals, filters, sizing rules, risk parameters, key metrics
- **Markdown prose** (human-readable): philosophy, analysis process, execution rules, behavioral guardrails

```yaml
---
version: alpha
name: Buffett/Munger Value Investing
slug: buffett-munger-value
style: value+quality
timeHorizon: 5-10 years
decisionCadence: quarterly
assetClasses:
  - public equities
universe:
  marketCap: large-cap
  liquidity: high
marketRegime:
  preferred: any
  posture: patient
signals:
  fundamental:
    roic:
      weight: high
      frequency: annual
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

### Templates — Copyable Starting Points

Use these when adding a new investor model:

| Template | Purpose |
|---|---|
| [`templates/skill.template.md`](templates/skill.template.md) | Defines the investor skill package: triggers, inputs, process, output format, guardrails, and Questflow use |
| [`templates/invest.template.md`](templates/invest.template.md) | Optional schema file for larger models: worldview, universe, market regime, signals, filters, sizing, risk, monitoring, playbooks, and sources |

The optimized template adds fields that matter for real investor agents: `assetClasses`, `universe`, `marketRegime`, `decisionCadence`, signal `frequency`, and `sources`.

## Repo Structure

```
investorskills/
├── docs/
│   ├── spec.md              # Optional investment schema specification
│   ├── reading-list.md      # Primary sources and classic essays by skill
│   ├── podcast-list.md      # Recommended podcasts with Spotify/Apple links
│   └── youtube-list.md      # Recommended YouTube talks and channels by skill
├── examples/
│   └── buffett.invest.md    # Standalone investment-system example
├── templates/
│   ├── skill.template.md    # Copyable investor skill package template
│   └── invest.template.md   # Optional investment schema template
├── skills/
│   └── <skill-name>/        # Agent skill package
│       ├── SKILL.md
│       └── invest.md        # Optional, referenced by SKILL.md
├── assets/
│   └── social-poster.png
├── README.md
└── LICENSE
```

## Quick Start

### Use an investor skill

Copy a skill package into your agent's skills directory. The `SKILL.md` file is the entry point; any linked `invest.md` file is supporting schema.

### Use readings, podcasts, and videos as skill references

1. Load a skill package.
2. Open the skill's own `Reading List` / `Podcasts` / `YouTube` section.
3. Or use the shared indexes:
   - [docs/reading-list.md](docs/reading-list.md)
   - [docs/podcast-list.md](docs/podcast-list.md)
   - [docs/youtube-list.md](docs/youtube-list.md)
4. Attach 1-3 sources as reference material and ask the agent to apply the skill process, not just summarize the source.

### Create a new investor skill

```bash
mkdir -p skills/livermore
cp templates/skill.template.md skills/livermore/SKILL.md
cp templates/invest.template.md skills/livermore/invest.md
```

Then replace the placeholders with the investor's actual judgment system: triggers, universe, regime, signals, filters, sizing, risk, monitoring, playbooks, and sources.

### Install as a skill

Install all packaged skills or a single skill:

```bash
# Install all skills
npx skills add https://github.com/xuboyuebobb/investorskills

# Install a single skill
npx skills add https://github.com/xuboyuebobb/investorskills --skill "livermore"
```

### Use standalone

Copy any `SKILL.md` into ChatGPT, Codex, Cursor, Claude, or another agent conversation. If the skill references `invest.md`, include that file too.

## Investment Schema Examples

| File | Investor | Style | Description |
|---|---|---|---|
| [`buffett.invest.md`](examples/buffett.invest.md) | Buffett, Munger, Graham | value+quality | Long-term ownership of durable businesses bought below intrinsic value |

## Available Skills

| Skill | Investor | Model |
|---|---|---|
| [`livermore`](skills/livermore/) | Jesse Livermore | Trend following, breakout confirmation, pyramiding, and strict loss cutting |
| [`oneil-canslim`](skills/oneil-canslim/) | William O'Neil | Earnings acceleration, relative strength, institutional demand, and clean base breakouts |
| [`buffett`](skills/buffett/) | Warren Buffett | Durable business ownership, owner earnings, moat, management quality, and margin of safety |
| [`munger`](skills/munger/) | Charlie Munger | Mental models, inversion, incentives, quality filters, and concentrated decisions |
| [`marks-cycles`](skills/marks-cycles/) | Howard Marks | Second-level thinking, credit cycles, risk premiums, and defensive/aggressive posture |
| [`soros-reflexivity`](skills/soros-reflexivity/) | George Soros | Reflexivity, macro dislocations, feedback loops, and asymmetric risk windows |
| [`druckenmiller`](skills/druckenmiller/) | Stanley Druckenmiller | Top-down macro, liquidity regimes, concentrated risk-taking, and quick loss cutting |
| [`darvas-box`](skills/darvas-box/) | Nicolas Darvas | New-high momentum, box breakouts, volume confirmation, and mechanical stops |
| [`ansem-crypto`](skills/ansem-crypto/) | Ansem | Crypto portfolio structure, L1/app-token theses, attention, narratives, comparative valuation, TA+FA, and retail-flow reflexivity |
| [`serenity`](skills/serenity/) | Serenity / @aleabitoreddit | AI and semiconductor supply-chain chokepoints, upstream bottleneck mapping, institutional rotation, and dilution-aware thesis validation |
| [`minervini-vcp`](skills/minervini-vcp/) | Mark Minervini | VCP pattern, stage-2 trend, volatility contraction, tightness, pivot breakout, and fast loss cutting |
| [`burry-asymmetric-contrarian`](skills/burry-asymmetric-contrarian/) | Michael Burry | Primary-source contrarian longs/shorts, complex mispricing, asymmetric payoff, and catalyst/carry risk |
| [`simons-quant`](skills/simons-quant/) | Jim Simons / Renaissance | Quant signal research, many weak edges, statistical validation, execution cost, and signal decay |
| [`lynch-growth`](skills/lynch-growth/) | Peter Lynch | Understandable growth stocks, company classification, PEG discipline, balance sheet, and story monitoring |
| [`klarman-deep-value`](skills/klarman-deep-value/) | Seth Klarman | Deep value, distressed assets, forced sellers, illiquidity discounts, and downside protection |
| [`greenblatt-special-situations`](skills/greenblatt-special-situations/) | Joel Greenblatt | Spinoffs, restructurings, merger securities, forced selling, and quality-value special situations |
| [`tepper-distressed-macro`](skills/tepper-distressed-macro/) | David Tepper | Distressed macro, bank/credit stress, capital structure, policy backstops, and recovery asymmetry |
| [`ptj-macro-trend`](skills/ptj-macro-trend/) | Paul Tudor Jones | Macro trend, turning points, technical confirmation, liquidity, and strict drawdown control |
| [`seykota-systematic-trend`](skills/seykota-systematic-trend/) | Ed Seykota | Systematic trend following, mechanical rules, volatility sizing, whipsaw tolerance, and discipline |
| [`turtle-trading`](skills/turtle-trading/) | Richard Dennis / Turtles | Donchian breakouts, ATR/N-unit sizing, pyramiding, stops, and portfolio heat control |
| [`icahn-activist`](skills/icahn-activist/) | Carl Icahn | Activist investing, governance pressure, capital allocation fixes, asset sales, and control catalysts |
| [`li-lu-value`](skills/li-lu-value/) | Li Lu | Circle of competence, deep research, downside protection, global quality value, and concentrated ownership |
| [`nick-sleep-scale-economies`](skills/nick-sleep-scale-economies/) | Nick Sleep / Qais Zakaria | Scale economies shared, customer-value flywheels, owner culture, low turnover, and long-duration compounding |
| [`dalio-principles-allweather`](skills/dalio-principles-allweather/) | Ray Dalio | Economic machine, debt cycles, risk parity, diversification, and all-weather portfolio construction |
| [`gundlach-bonds`](skills/gundlach-bonds/) | Jeffrey Gundlach | Duration, yield curve, credit spreads, fixed-income relative value, and rates regime judgment |
| [`ackman-concentrated-activism`](skills/ackman-concentrated-activism/) | Bill Ackman | Concentrated multiyear equity theses, activism catalysts, business quality, and public thesis path |
| [`einhorn-forensic-short`](skills/einhorn-forensic-short/) | David Einhorn | Forensic accounting shorts, governance failures, capital-allocation critique, and evidence-based long/short |
| [`coleman-tiger-growth`](skills/coleman-tiger-growth/) | Chase Coleman / Tiger Global | Scalable growth platforms, unit economics, network effects, growth duration, and concentrated tech growth |
| [`cathie-wood-innovation`](skills/cathie-wood-innovation/) | Cathie Wood | Disruptive innovation, S-curve adoption, technology convergence, and long-duration thematic growth |
| [`graham-net-net`](skills/graham-net-net/) | Benjamin Graham | Net-current-asset value, statistical deep value, margin of safety, and balance-sheet-first bargains |
| [`schloss-cigar-butt`](skills/schloss-cigar-butt/) | Walter Schloss | Cigar-butt value, cheap balance sheets, diversified bargains, and low-turnover deep value |
| [`templeton-max-pessimism`](skills/templeton-max-pessimism/) | John Templeton | Global contrarian value, maximum pessimism buying, crisis recovery, and cross-border opportunity search |
| [`hohn-concentrated-quality`](skills/hohn-concentrated-quality/) | Chris Hohn / TCI | Concentrated quality compounders, pricing power, high ROIC, engagement, and long-duration ownership |
| [`watsa-insurance-float`](skills/watsa-insurance-float/) | Prem Watsa / Fairfax | Insurance float, contrarian value allocation, special situations, and downside-focused capital compounding |
| [`muddy-waters-forensic`](skills/muddy-waters-forensic/) | Muddy Waters / Carson Block | Forensic shorts, channel checks, related-party webs, cash verification, and evidence-based short reports |
| [`hindenburg-investigation`](skills/hindenburg-investigation/) | Hindenburg Research | Investigative short reports, promoter networks, disclosure gaps, and catalyst-driven evidence chains |
| [`spruce-point-accounting-short`](skills/spruce-point-accounting-short/) | Spruce Point Capital | Accounting-quality shorts, cash conversion, aggressive non-GAAP, acquisition accounting, and governance red flags |
| [`sequoia-founder-market`](skills/sequoia-founder-market/) | Sequoia Capital | Founder quality, market selection, product-market fit, distribution, and long-duration company building |
| [`a16z-techno-optimist`](skills/a16z-techno-optimist/) | Andreessen Horowitz | Technology adoption, market creation, platform power, AI/software/crypto theses, and techno-optimist venture bets |
| [`usv-network-effects`](skills/usv-network-effects/) | Union Square Ventures | Network effects, marketplace defensibility, protocols/platforms, openness, and scalable network businesses |
| [`founders-fund-contrarian`](skills/founders-fund-contrarian/) | Founders Fund | Contrarian venture, hard tech, non-consensus secrets, bold product ambition, and monopoly-seeking company design |
| [`yc-early-pmf`](skills/yc-early-pmf/) | Y Combinator | Early PMF, talk to users, simple growth, default alive, and anti-premature-scaling startup judgment |
| [`arthur-hayes-liquidity`](skills/arthur-hayes-liquidity/) | Arthur Hayes | Dollar liquidity, crypto risk appetite, funding/leverage cycles, and macro-driven crypto positioning |
| [`hsaka-crypto-ta`](skills/hsaka-crypto-ta/) | Hsaka | Crypto market structure, trend, invalidation, leverage discipline, and narrative-aware technical timing |
| [`cryptocred-structure`](skills/cryptocred-structure/) | CryptoCred | Crypto levels, structure, confluence, predefined risk, and educational chart planning |
| [`willy-woo-onchain`](skills/willy-woo-onchain/) | Willy Woo | On-chain holder behavior, realized value, supply dynamics, and BTC/crypto cycle diagnosis |
| [`cobie-cycle-filter`](skills/cobie-cycle-filter/) | Cobie | Crypto cycle psychology, narrative traps, leverage humility, and anti-stupid decision filtering |
| [`paradigm-crypto-research`](skills/paradigm-crypto-research/) | Paradigm | Protocol research, mechanism design, incentives/MEV/L2, and research-driven crypto investing |
| [`multicoin-thesis-vc`](skills/multicoin-thesis-vc/) | Multicoin Capital | Thesis-driven crypto VC, high-performance chains, token value capture, and sector concentration |
| [`a16z-crypto`](skills/a16z-crypto/) | a16z crypto | Web3 adoption, crypto infrastructure vs apps, open networks, and long-duration ecosystem investing |
| [`delphi-thematic-crypto`](skills/delphi-thematic-crypto/) | Delphi Digital | Crypto thematic research, sector maps, tokenomics, narrative timing, and research-driven allocation |
| [`placeholder-token-networks`](skills/placeholder-token-networks/) | Placeholder | Open network investing, token frameworks, network participation, and long-duration crypto network ownership |
| [`duanyongping-benfen-value`](skills/duanyongping-benfen-value/) | 段永平 / Duan Yongping | Benfen value, good business at right price, long hold, circle of competence, owner mindset |
| [`fengliu-reverse-weakhand`](skills/fengliu-reverse-weakhand/) | 冯柳 / Feng Liu | Weak-hand reverse investing, asymmetric risk/reward, consensus divergence, probability-based sizing |
| [`qiuguolu-value-quality`](skills/qiuguolu-value-quality/) | 邱国鹭 / Qiu Guolu | Value-quality, industry leaders, circle of competence, simple clear thesis |
| [`dengxiaofeng-cycle-industry`](skills/dengxiaofeng-cycle-industry/) | 邓晓峰 / Deng Xiaofeng | Cycle-aware industry investing, supply-demand dynamics, buying leaders at cycle bottoms |
| [`danbin-longterm-compounder`](skills/danbin-longterm-compounder/) | 但斌 / Dan Bin | Long-term compounders, holding great companies through volatility, time as edge |
| [`libei-macro-hedge`](skills/libei-macro-hedge/) | 李蓓 / Li Bei | Macro hedge, regime identification, conviction-based sizing, drawdown control |
| [`tangnengtong-shortterm-ta`](skills/tangnengtong-shortterm-ta/) | 唐能通 / Tang Nengtong | A-share short-term TA, volume-price relationships, MA systems, breakout signals |
| [`chenhao-limit-up`](skills/chenhao-limit-up/) | 陈浩 / Chen Hao | A-share limit-up sentiment, market emotion cycles, board strength, aggressive momentum |
| [`zhanglei-longterm-research-value`](skills/zhanglei-longterm-research-value/) | 张磊 / Zhang Lei (Hillhouse) | Long-term research-driven value, deep diligence, great companies, active value-add |
| [`shihanbing-macro-interest-analysis`](skills/shihanbing-macro-interest-analysis/) | 时寒冰 / Shi Hanbing | Macro interest analysis, incentive-based policy prediction, trend following from利益博弈 |

## Contributing

### Adding an investor skill

1. Create `skills/<skill-name>/SKILL.md`
2. Use [`templates/skill.template.md`](templates/skill.template.md)
3. Embed the investment judgment system in `SKILL.md`, or add `skills/<skill-name>/invest.md` for larger models
4. Define when to use, inputs, process, output format, and guardrails
5. Add an entry to the Available Skills table above

### Adding a standalone investment schema example

1. Create `<name>.invest.md` in `examples/`
2. Follow the [investment schema specification](docs/spec.md)
3. Include YAML frontmatter with tokens and markdown body with rationale
4. Add an entry to the Investment Schema Examples table above

### Planned models

- `lynch.invest.md` — Peter Lynch: invest in what you know, PEG ratio, stock categories
- `dalio.invest.md` — Ray Dalio: all-weather, risk parity, macro regime identification
- `simons.invest.md` — Jim Simons: quantitative, statistical arbitrage, signal processing
- `greenblatt.invest.md` — Joel Greenblatt: magic formula, special situations, spinoffs
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

## License

MIT
