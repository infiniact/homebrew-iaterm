cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "7bfdd6d30b83ae413143eddf92d2268a9c032a5334bf6b921047305e9f70fac2",
         intel: "b708e0f46fb81fd8279d1b974c2227b684afa393ae460069f466d4877a7a20d0"

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
