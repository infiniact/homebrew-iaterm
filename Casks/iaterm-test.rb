cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15-11"
  sha256 arm:   "df96a9de056d4dbed0c20015338e95f053a06e642b1635bbb86190d89f686df9",
         intel: "8504498b81bb136b4c3bfd0d98257ffb10a31f181d7b5f3089f231712585f2dc"

  url "https://github.com/infiniact/homebrew-iaterm/releases/download/test-v#{version}/IATerm-Test_#{version}_#{arch}.dmg"
  name "IATerm Test"
  desc "AI-Powered Terminal Emulator (Test Version)"
  homepage "https://iaterm.infiniact.com"

  livecheck do
    url "https://github.com/infiniact/homebrew-iaterm/releases?q=test-v"
    regex(/test[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)/i)
  end

  app "IATerm Test.app"

  zap trash: [
    "~/.iaterm",
    "~/Library/Application Support/com.infiniact.iaterm.test",
    "~/Library/Caches/com.infiniact.iaterm.test",
    "~/Library/Preferences/com.infiniact.iaterm.test.plist",
  ]
end
