cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-7"
  sha256 arm:   "952d947f83d9e96af2c66aa740fbf81fa18d46eb08dc3ce71309a3c6b97bd4bd",
         intel: "6f1a226f474bd90a1cae4bd8d6ea1c96d68480ada73e2cec1e19f9d03287ce7b"

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
