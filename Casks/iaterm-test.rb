cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15-3"
  sha256 arm:   "f6204153a503ec7ac5877c6ee7c571e71fab486da390ef624b84d81510f682d8",
         intel: "f3dffdaf87b31bee609d28de3ed3703cc3e1745209e63e25272f1127c3e22542"

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
