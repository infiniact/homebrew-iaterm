cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.32"
  sha256 arm:   "f3715c2fb5be1285193f767b62d1c8b7585f7e36348db7efbbd8a6d895e417e4",
         intel: "4f195936d670bbc425cc450d3a2ed54f79a8bf0aa07c8ca174d00a8425170165"

  url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_#{arch}.dmg"
  name "IATerm"
  desc "AI-Powered Terminal Emulator"
  homepage "https://iaterm.infiniact.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"
  app "IATerm.app"

  zap trash: [
    "~/.iaterm",
    "~/Library/Application Support/com.infiniact.iaterm",
    "~/Library/Caches/com.infiniact.iaterm",
    "~/Library/Preferences/com.infiniact.iaterm.plist",
  ]
end
