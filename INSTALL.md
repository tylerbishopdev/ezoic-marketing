# Install — Ezoic Marketing

Internal + partner use only. This plugin distributes through a private Git marketplace.

> This is a **private** repo (`tylerbishopdev/ezoic-marketing`). To install or auto-update, you must have access to it and be signed in to GitHub — run `gh auth login` once, or set a `GITHUB_TOKEN`. See step 0.

## 0. One-time GitHub sign-in (non-technical users start here)

The plugin lives in a private repo, so Claude Code needs to know you have access. Do this once:

1. Install the GitHub CLI if you don't have it: [cli.github.com](https://cli.github.com).
2. In a terminal, run:
   ```
   gh auth login
   ```
   Choose **GitHub.com** → **HTTPS** → **Login with a web browser**, and follow the prompts.
3. Ask whoever owns the repo to give your GitHub account access to `tylerbishopdev/ezoic-marketing`.

That's it — you won't need to do this again on this computer.

## 1. Add the marketplace and install

```
/plugin marketplace add tylerbishopdev/ezoic-marketing
/plugin install ezoic-marketing@ezoic-internal-marketing
```

Then start:

```
/ezoic-marketing:start
```

## 2. (Optional) auto-enable for a team

Drop this into a team or project `.claude/settings.json` so the plugin auto-installs when teammates trust the folder:

```json
{
  "extraKnownMarketplaces": {
    "ezoic-internal-marketing": {
      "source": { "source": "github", "repo": "tylerbishopdev/ezoic-marketing" }
    }
  },
  "enabledPlugins": {
    "ezoic-marketing@ezoic-internal-marketing": true
  }
}
```

## 3. (Optional) approve the `ezoic-brand` MCP server

The plugin ships `.mcp.json`, which registers the `ezoic-brand` MCP server (`https://iheartezoic.com/api/mcp`, Streamable HTTP). Approving it gives skills typed tool calls (`read_brand_guide`, `search_brand_standards`, `list_brand_assets`, `get_brand_asset`).

**This is a quality-of-life upgrade, not a prerequisite.** If you don't approve it — or it's unreachable — skills fall back to fetching the same data from the live API (`https://iheartezoic.com/llms-full.txt`, `/api/ezoic-brand`, `/api/ezoic-brand/assets`), then to the bundled local references. No skill blocks on MCP. Manage approval anytime with `/plugin`.

## 4. (Optional) install the pptx companion for rendered decks

`ezoic-pitch-deck` always produces a slide-by-slide outline. To render that outline to a real `.pptx` file, install the `anthropic-skills` plugin (which provides the `pptx` skill). Without it, the skill delivers the outline plus a one-line note on how to add rendering — it never fails silently.

## 5. Updates

| What changed | How it reaches you |
|---|---|
| Brand content (voice, proof, positioning, assets) on iheartezoic.com | Instant — picked up on the next MCP/API call. No action. |
| Plugin structure (skills, prompts, references) | `git push` to the plugin repo, then `/plugin marketplace update` (or auto-update at startup). |

This plugin omits the `version` field in `plugin.json`, so for a git-hosted marketplace **every commit is treated as a new version** (per the Claude Code marketplace docs). Push a commit and installed users pick it up on their next update — no re-install, no version bump.

For a private GitHub repo, set a `GITHUB_TOKEN` in your shell so Claude Code can pull updates.

## 6. Verify it works

1. Run `/ezoic-marketing:start` and give it a real ask (e.g. "draft a LinkedIn post from Tyler on the 250K threshold").
2. Confirm it boots the brand context, builds a brief, and either drafts or routes.
3. Confirm the output cites a proof point with its segment context, uses the right audience noun, and frames Ezoic as revenue infrastructure.

To validate the plugin/marketplace structure itself, run from the repo root:

```
claude plugin validate .
```
