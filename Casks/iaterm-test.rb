cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-8"
  sha256 arm:   "b0cc6ec07769a02cd83d5cdd60572e1697c221ddae9444c53387d8441b3318f9",
         intel: "a12d72dd4997b6b7183f6b44ed20b8022a5ba58b35fb3f8ada6efc6697333dcc"

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
