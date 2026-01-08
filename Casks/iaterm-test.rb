cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-9"
  sha256 arm:   "38b42ee7eeaae46c1893d54a3e08ac427795c0a63ad7c5d027897c82f4715dc6",
         intel: "53b4d8b1e64b1af35361c8831b5bf089aa81ac876646593b577fd6989a804205"

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
