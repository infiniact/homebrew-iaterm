cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.14.1"
  sha256 arm:   "替换为实际SHA256",
         intel: "替换为实际SHA256"

  url "https://github.com/infiniact/homebrew-iaterm/releases/download/test-v#{version}/IATerm-Test_#{version}_#{arch}.dmg"
  name "IATerm Test"
  desc "AI-Powered Terminal Emulator (Test version)"
  homepage "https://www.infiniact.com"

  livecheck do
    url "https://github.com/infiniact/homebrew-iaterm/releases/latest/download/latest-test.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"
  app "IATerm Test.app"

  zap trash: [
    "~/.iaterm",
    "~/Library/Application Support/com.infiniact.iaterm.test",
    "~/Library/Caches/com.infiniact.iaterm.test",
    "~/Library/Preferences/com.infiniact.iaterm.test.plist",
  ]
end
