cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15-7"
  sha256 arm:   "b95fa5778023bc46ec5b418c0c07236b2171e5688d173154af2c87fd93e6b049",
         intel: "9cce96dd7f9643a64971e8f22900e7a277174c1c85c1b8285a491ea0a3ba7e67"

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
