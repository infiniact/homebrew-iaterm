# IATerm · Homebrew 安装源（已迁移）

[English](README.md) · **简体中文**

IATerm 的 Cask 已迁移到 InfiniAct 统一安装源：

```bash
brew install --cask infiniact/release/iaterm
```

以前通过 `infiniact/iaterm` 安装过的用户，执行 `brew update` 即可自动迁移（`tap_migrations.json`）。
详见 [infiniact/homebrew-release](https://github.com/infiniact/homebrew-release)。

> 本仓库刻意保留：它的 Release 存放 IATerm 安装包和已安装客户端使用的自动更新清单。
