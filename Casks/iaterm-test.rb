cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-6"
  sha256 arm:   "9eebc1c4daaa849a9276c70b90eb16412449c7dddc41d898d871022d865cb518",
         intel: "ae27d36139d59fa61fe7eb25d9294c5abbfbe92eaef342dc7a0342c74e28d920"

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
