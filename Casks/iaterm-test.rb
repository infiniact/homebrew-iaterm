cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-12"
  sha256 arm:   "758134b4611efb91220db346278fda88c98dae95aba016d1a9d74ddc47db7ed1",
         intel: "b2a17b5e2f41b37f9106c5d5d2b30b2e92e0fcf22f97eeda155264232bc45776"

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
