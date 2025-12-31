cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "ea51895b8b4554a12275a584f68bbe95e2ef6d63fc9a29001d1d5c3e889910b7",
         intel: "a2689f19dfdb95436a6dd7709332898bb8077221042cc9dd70af98e75186b3fa"

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
