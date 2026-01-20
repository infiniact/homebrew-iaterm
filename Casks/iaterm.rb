cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.26"
  sha256 arm:   "248230d00c5a9938035da3dab6570748ebb437d266c76de07b7fbf0137d006aa",
         intel: "7457e08292190df093f7181cb3690ab0d6348b184f7030cf35c1de23122b4415"

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
