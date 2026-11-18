# Awesome Claude Mods [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> The best Claude Code Mods, sorted by what they do for you.

Mods change how Claude Code looks and behaves: new panes, live dashboards, smarter prompts, even games while you wait. They launched October 2026 and are still early access, so expect things to move fast.

Every entry here was checked by hand. One line each, no fluff.

## Contents

- [Getting Started](#getting-started)
- [Official](#official)
- [See More](#see-more)
- [Track Usage and Cost](#track-usage-and-cost)
- [GitHub and Teams](#github-and-teams)
- [Stay in Control](#stay-in-control)
- [Fun](#fun)
- [Build Your Own](#build-your-own)
- [Related Lists](#related-lists)

## Getting Started

- You need a recent Claude Code (v2.1.287 or later).
- A Mod is a plugin. Install it the same way you install any Claude Code plugin.
- Mods run inside Claude Code with real access to your machine. Read the code before you install one.

## Official

Built by Anthropic, shipped in the [Claude Code repo](https://github.com/anthropics/claude-code/tree/main/mods).

- [agents-md](https://github.com/anthropics/claude-code/tree/main/mods/agents-md) - Makes Claude read `AGENTS.md` files the same way it reads `CLAUDE.md`.
- [diff](https://github.com/anthropics/claude-code/tree/main/mods/diff) - `/diff` opens your uncommitted changes in a pane beside the chat.
- [sec-default](https://github.com/anthropics/claude-code/tree/main/mods/sec-default) - Security baseline that lets an organization set rules every other mod must follow.
- [telemetry](https://github.com/anthropics/claude-code/tree/main/mods/telemetry) - Analytics for plugins, rebuilt as a mod.

## See More

- [claude-mods (mermaid)](https://github.com/galElmalah/claude-mods) - Draws mermaid diagrams right inside the chat.
- [claude-plugin-mermaid](https://github.com/WhiteKr/claude-plugin-mermaid) - Turns mermaid code blocks into box-drawing diagrams in the terminal.
- [flowpane](https://github.com/mpolatcan/flowpane) - Live graph of a running workflow, in a side pane.
- [cc-mod-waitwhat](https://github.com/GGGODLIN/cc-mod-waitwhat) - Re-explains Claude's last answer in plain words, without touching the chat.
- [next-steps](https://github.com/pawandeepdhall/claude-mods) - Up to six suggested next prompts after each reply. Tick the ones you want and send. Uses a little model usage each turn.
- [prismantis](https://github.com/NahumLitvin/prismantis) - Tables, charts, mermaid and code drawn properly, with 15 themes and a copy button on everything.
- [prompt-rail](https://github.com/oikon48/prompt-rail) - A rail of your past prompts. Hover to reread, click to jump back.
- [claude-code-sketch](https://github.com/allen-hsu/claude-code-sketch) - Claude answers with diagrams, flows and wireframes right in the terminal.
- [cc-mod-image-view](https://github.com/GGGODLIN/cc-mod-image-view) - Thumbnails of pasted images instead of bare `[Image #n]` tags.
- [xcode-mods](https://github.com/artemnovichkov/xcode-mods) - Xcode builds, tests, console and SwiftUI previews in a pane.

## Track Usage and Cost

- [cctop](https://github.com/tomstagl/cctop) - A live dashboard for context, tokens, cost, limits and agents.
- [claude-mods (trackers)](https://github.com/Arunjay4213/claude-mods) - Context window, plan quota burn rate and cost per turn.
- [cockpit-for-claude](https://github.com/drkokorev/cockpit-for-claude) - Context, limits, cost, subagents, tool errors, diffs and tests in one live panel, with a guard for risky commands.
- [usage-band](https://github.com/pawandeepdhall/claude-mods) - Your 5-hour and weekly limits with time until reset, always above the prompt, plus one-click new chat and push.
- [claude-flightdeck](https://github.com/scasella/claude-flightdeck) - Context, cost, permission checks and subagents as cards or swimlanes in a pane.
- [ribbon](https://github.com/robonuggets/ribbon) - Usage left, reset times, and whether your prompt cache is still warm. One row.

## GitHub and Teams

- [pull-request-pane](https://github.com/meganemura/pull-request-pane) - Your session's pull requests, checks and review status in a side pane.
- [cc-pr-tracker](https://github.com/sezaakgun/cc-pr-tracker) - PR merge state and checks above the prompt, with alerts when they change.
- [bw-peek](https://github.com/iautom8things/bw-peek) - Opens Beadwork tickets in a pane, with a button under replies that mention one.
- [claude-who](https://github.com/SaharCarmel/claude-who) - See who on your team is coding live, plus token leaderboards. Self-hosted.
- [claude-console](https://github.com/SaM-runtime/claude-console) - All your projects in one pane: status, Git, PRs, CI and quota.

## Stay in Control

- [claude-mods (honest agent)](https://github.com/yash-gadodia/claude-mods) - Keeps the agent in scope and checks that deploys really worked.
- [typesafe-mod](https://github.com/BeLazy167/typesafe-mod) - Picks the right skill for each prompt and answers the agent's simple either-or questions.
- [claude-work-mode](https://github.com/danyuchn/claude-work-mode) - Set how far Claude goes without asking, and make it delegate big reads.
- [agent-usage-guard](https://github.com/rbartoli/agent-usage-guard) - Stops runaway subagents and retry loops before they burn your 5-hour window.
- [human-in-the-loop](https://github.com/tzafrir/human-in-the-loop) - Claude hands you the tasks only you can do, and picks back up when you answer.

## Fun

- [cc-arcade](https://github.com/sezaakgun/cc-arcade) - Snake, Tetris, 2048 and more above the prompt, plus a pet that grows as you ship.
- [claude-games](https://github.com/mohi-devhub/claude-games) - Arcade games that react to Claude's real edits, tests and commits.
- [cc-dino](https://github.com/giovaborgogno/cc-dino) - The offline T-rex game, with a leaderboard.
- [pixel-buddy](https://github.com/SimakovIgor/pixel-buddy) - A pixel pet in the footer that grows on your answers, passing tests and commits.
- [claude-mods-pokedex](https://github.com/deonmenezes/claude-mods-pokedex) - Catch creatures based on what you type. Your partner levels up as Claude works.
- [roll-credits](https://github.com/smukh/roll-credits) - Movie-style credits at the end of your session.
- [claude-roulette](https://github.com/tldev/claude-roulette) - Chat with a random human while Claude is thinking.
- [clawd-actor](https://github.com/BrianHuang813/clawd-actor) - Clawd acts out what Claude is doing, in 33 scenes above the prompt.
- [claudinho](https://github.com/arturogarrido/claudinho) - Live football scores above the prompt, with goals as toasts.

## Build Your Own

- [claude-mods-skill](https://github.com/BeLazy167/claude-mods-skill) - A skill that teaches Claude to build mods for you, with a starter example.
- [claude-code-mods](https://github.com/karanb192/claude-code-mods) - A mod-builder skill plus sample mods.
- [Official mod source](https://github.com/anthropics/claude-code/tree/main/mods) - Read how Anthropic builds them.
- [claude-mods-starter-kit](https://github.com/promptadvisers/claude-mods-starter-kit) - Ten small mods, a beginner guide and a template to build your own.

## Related Lists

- [awesome-claude-code-mods](https://github.com/karanb192/awesome-claude-code-mods) - Every mod, with a security scan of what it can access.
- [awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) - Everything else for Claude Code.

## Contributing

Built a mod or found a good one? [Submit it](https://github.com/osaki42/awesome-claude-mods/issues/new?template=submit-mod.yml) or read [CONTRIBUTING.md](CONTRIBUTING.md).

## License

[CC0](LICENSE). Use this list however you like.
