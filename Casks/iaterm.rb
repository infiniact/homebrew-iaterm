cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.24"
  sha256 arm:   "c12fa7b649b31430cc1b30b5c19679705c66c7147b0c772bf8e51b649af0f822",
         intel: "1a42a02f953c74b7f002e7fc0eb4f60a73f50ea37568b51acb9a1f0cd7be1051"

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
