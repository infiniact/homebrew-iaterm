cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "79fd8e98407337c0c4572dd0a479c0971054e30b991b4aae507cc29965502562",
         intel: "5de3583b3e6579cc2c21f4f7587a47216a9b2bc0ed057e1b441d58164674bea2"

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
