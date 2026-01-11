cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-10"
  sha256 arm:   "f6db1669408509165ec4f7f7c44ac9c78558a11d0287fb6fbf241e10b7762daf",
         intel: "7ececcca726e1212265313aafc18a690eb121d863006c64514e98c655b3ba3c6"

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
