# Install — Ezoic Marketing

This is a Claude Code plugin. Installing it takes **two lines pasted into Claude Code**. No GitHub account, no terminal, no git.

## Install (2 steps)

In Claude Code, paste these one at a time:

```
/plugin marketplace add tylerbishopdev/ezoic-marketing
```

```
/plugin install ezoic-marketing@ezoic-internal-marketing
```

That's it. Start it anytime with:

```
/ezoic-marketing:start
```

Tell it what you need — "draft a LinkedIn post," "build a one-pager," "review this copy" — and it loads the Ezoic brand and produces it on-brand.

---

## Optional extras

**Approve the brand MCP server (recommended, not required).** The plugin ships an `ezoic-brand` MCP server (`https://iheartezoic.com/api/mcp`). If Claude Code asks to approve it, say yes — it gives the skills typed access to the live brand library. If you skip it, everything still works: the skills fetch the same data from the public API and the bundled references. Manage it anytime with `/plugin`.

**Rendered PowerPoint decks.** `ezoic-pitch-deck` always produces a slide-by-slide outline. To turn that into a real `.pptx` file, also install the `anthropic-skills` plugin (it provides the `pptx` skill). Without it, you still get the full outline plus a one-line note on how to add rendering.

---

## Updates

When the plugin is updated, get the latest with:

```
/plugin marketplace update
```

(Claude Code can also auto-update at startup.) Brand content from iheartezoic.com is read live — those changes show up automatically with no update needed.

---

## Verify it works

1. Run `/ezoic-marketing:start` and give it a real ask (e.g. "draft a LinkedIn post from Tyler on the 250K threshold").
2. It should load the brand context, build a brief, and produce on-brand copy that cites a real proof point.

To validate the plugin's structure (for maintainers), run from the repo root:

```
claude plugin validate .
```
