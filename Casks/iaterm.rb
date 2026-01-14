cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.20"
  sha256 arm:   "9c36cfe33cf860d69295e43af7ad611ca20422d7d63b064c546c135f069dccb9",
         intel: "52bdfcc7dc54f835db2736bb920e8c8bd1a6f696f86516278fbf6ccee6747e40"

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
