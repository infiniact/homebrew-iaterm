# IATerm · Homebrew Tap

**English** · [简体中文](README.zh-CN.md)

**IATerm — the terminal for the AI era.** Multi-screen, broadcast, session memory and bastion access, with an AI assistant wired straight into your remote systems.

This tap distributes the **official website edition** of IATerm for macOS (Apple silicon and Intel). It is the same build offered for direct download at [www.iaterm.ai](https://www.iaterm.ai), not the Mac App Store edition.

## Install

```bash
brew install --cask infiniact/iaterm/iaterm
```

No `brew tap` needed first; Homebrew adds the tap automatically.

## Update

IATerm can check for and install updates from inside the app. To update through Homebrew instead:

```bash
brew upgrade --cask iaterm
```

## Uninstall

```bash
brew uninstall --cask iaterm          # remove the app, keep your data
brew uninstall --zap --cask iaterm    # also remove settings, connections and local history
```

## Features

- **Multi-screen and workspaces.** Drive terminals across up to 3 displays. Group them into workspaces by project or environment and split panels in any direction (⌘[ / ⌘] to switch workspaces, ⌘N new panel, ⇧⌘N new workspace).
- **Broadcast.** Type once and send to every selected panel, including Ctrl+C / Z / L / \\ signals.
- **Session memory.** Scrollback is restored on restart, and all previous sessions reconnect with one click.
- **Bastion access.** Native OpenSSH ProxyJump and JumpServer support for reaching internal hosts.
- **AI assistant.** Bring your own model provider key; @-mention connected terminals and the assistant reads and runs commands there, with confirmation by default.
- **Dual-layer themes.** 18 UI themes and 40 iTerm2-compatible terminal palettes, chosen independently, overridable per connection (⇧⌘K).
- **Privacy first.** Data stays on your Mac in an encrypted database; keys live in the macOS Keychain.

## Trial and license (website edition)

- **7-day free trial**, no sign-in required. Signing in adds **30 more days once per device**.
- **Perpetual license** with **12 months of new-feature updates**. Bug fixes and security patches are never restricted.
- After the 12 months, the license keeps working; an optional **annual update service** adds another 12 months of new features.
- Purchase and sign-in happen inside the app (email code or Google). Checkout shows prices in USD, CNY or HKD based on your region; early-bird pricing applies while seats last.
- Website-edition and Mac App Store licenses are separate.

## Links

- Website: [www.iaterm.ai](https://www.iaterm.ai)
- Privacy: [www.iaterm.ai/en/privacy](https://www.iaterm.ai/en/privacy) · Terms: [www.iaterm.ai/en/terms](https://www.iaterm.ai/en/terms)
- Support: [support@infiniact.com](mailto:support@infiniact.com)
