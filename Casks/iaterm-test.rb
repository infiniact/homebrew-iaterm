cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15-10"
  sha256 arm:   "067b3b132313b2c33f658d58d1253a1e026796ac7a7925efb6f1e82e7e34f5cc",
         intel: "a64631939afb653593efdd4c869ab8a27af8329be20c0b6441df6ab44c08793c"

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
