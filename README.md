# IATerm · Homebrew Tap

**IATerm — the terminal for the AI era.** Multi-screen, broadcast, session memory and bastion access, with an AI assistant wired straight into your remote systems.

This tap distributes the **official website edition** of IATerm for macOS (Apple silicon and Intel). It is the same build offered for direct download at [www.iaterm.ai](https://www.iaterm.ai), not the Mac App Store edition.

[中文说明](#中文)

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

---

<a id="中文"></a>

# IATerm · Homebrew 安装源

**IATerm —— AI 时代的终端。** 多屏协作、批量广播、会话记忆、堡垒机直连，把 AI 助手直接接到你的远程系统上。

本仓库分发的是 IATerm **官网版**（macOS，Apple 芯片与 Intel 通用），与 [www.iaterm.ai](https://www.iaterm.ai) 直接下载的是同一个版本，不是 Mac App Store 版。

## 安装

```bash
brew install --cask infiniact/iaterm/iaterm
```

无需先 `brew tap`，Homebrew 会自动添加本安装源。

## 更新

应用内可以检查并安装更新，也可以通过 Homebrew 更新：

```bash
brew upgrade --cask iaterm
```

## 卸载

```bash
brew uninstall --cask iaterm          # 只删除应用，保留数据
brew uninstall --zap --cask iaterm    # 连同设置、连接和本地历史一起删除
```

## 功能

- **多屏协作与多工作空间。** 最多 3 块显示器同时操控终端；按项目或环境分组，任意方向分屏（⌘[ / ⌘] 切换工作区，⌘N 添加面板，⇧⌘N 添加工作区）。
- **广播指令。** 一次输入，同步发送到所有选中的面板，支持 Ctrl+C / Z / L / \\ 信号。
- **历史记忆。** 重启后自动恢复滚动记录，一键重连所有历史会话。
- **堡垒机直连。** 原生支持 OpenSSH ProxyJump 与 JumpServer，安全访问内网主机。
- **AI 助手。** 自带模型服务商密钥（BYOK）；用 @ 选中已连接的终端，助手即可读取上下文并执行命令，默认逐条确认。
- **双层主题。** 18 套界面主题与 40 套 iTerm2 兼容终端配色独立选择，每个连接可单独覆盖（⇧⌘K）。
- **隐私优先。** 数据保存在本机加密数据库，密钥存放在 macOS 钥匙串。

## 试用与授权（官网版）

- **免费试用 7 天**，无需登录；登录后每台设备可**一次性再加 30 天**。
- **永久授权**，含 **12 个月新功能更新**；修复与安全补丁不受限制。
- 12 个月后授权照常可用；如需继续获得新功能，可选购**年度更新服务**，再延长 12 个月。
- 购买与登录都在应用内完成（邮箱验证码或 Google）。收银台按所在地区显示美元、人民币或港币价格；早鸟价名额有限。
- 官网版与 Mac App Store 版的授权互不通用。

## 链接

- 官网：[www.iaterm.ai](https://www.iaterm.ai/zh)
- 隐私政策：[www.iaterm.ai/zh/privacy](https://www.iaterm.ai/zh/privacy) · 服务条款：[www.iaterm.ai/zh/terms](https://www.iaterm.ai/zh/terms)
- 支持：[support@infiniact.com](mailto:support@infiniact.com)
