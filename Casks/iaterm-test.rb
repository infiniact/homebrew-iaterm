cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15-5"
  sha256 arm:   "c31c9079f6d24bf5c689b0899bef52c244aa4d423a44a11dc3347f5aac04f3fa",
         intel: "533e73792af056e66b4331db41cacea40aa03e38e2d27cc412be84c3a0510498"

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
