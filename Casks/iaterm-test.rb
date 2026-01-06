cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-5"
  sha256 arm:   "6aed8568cafbe9197706db6d422bfa453422a91cace14a3408c5c091b8aa20a1",
         intel: "85dc446ba982de2f393b2b1a1ada5c0539df73d18d4ae22754e1be369cbd4bce"

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
