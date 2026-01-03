cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15-4"
  sha256 arm:   "12527c0dce0cc9bcbe292f8477231cb19611ac06de3f3209bfe7f5d16b61850e",
         intel: "09dde7891bad52f624d8a19f52ba196097c61ca16749fcaa793a5ad2ed85a741"

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
