cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15-6"
  sha256 arm:   "fc57fd1ab518bdb2a4738271ec67989b8c14f54d3b5047c8827881b23946bb34",
         intel: "7a33d2ed0eee90ea4a873fc959eb4bf11c06f37b7d5c33b68e9b1fd53eb3c5bc"

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
