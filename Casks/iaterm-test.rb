cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-2"
  sha256 arm:   "4ea5bc6152605d1f997d147d60f4e53df6591fe755b35cfaa1f05bbc603e75b0",
         intel: "1f26273fe26169a0596640cdeafccb6eae2c39e1311136faeff463305e38e4f4"

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
