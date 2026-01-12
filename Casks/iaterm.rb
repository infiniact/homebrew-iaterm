cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "30ac0cb8acb2c5292501a18f40ee413e20cd5ddc33a7ff9701829c62bdd7178a",
         intel: "18042fa3555af8af22899e726a7c9330d4c364cef1aedb148cc77d8c8fd4adcd"

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
