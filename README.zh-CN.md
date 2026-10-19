# IATerm · Homebrew 安装源（已迁移）

[English](README.md) · **简体中文**

IATerm 的 Cask 已迁移到 InfiniAct 统一安装源：

```bash
brew install --cask infiniact/release/iaterm
```

以前通过 `infiniact/iaterm` 安装过的用户，执行 `brew update` 即可迁移（`tap_migrations.json`）。
如果 Homebrew 提示迁移 / 信任相关的警告，再执行一次即可完成：

```bash
brew install --cask infiniact/release/iaterm
```

已安装的应用在此期间照常可用。
详见 [infiniact/homebrew-release](https://github.com/infiniact/homebrew-release)。

> 本仓库刻意保留：它的 Release 存放 IATerm 安装包和已安装客户端使用的自动更新清单。
