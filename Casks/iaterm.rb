cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.25"
  sha256 arm:   "9c549de8c8064c0b055862d2b60265c892fbf8b9cf36de0cc5ef11af611feb59",
         intel: "1983d5b3ffe23602e6fa36629755ef761fbbd2cf811a4e58989209a1200a44c6"

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
