cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.17-1"
  sha256 arm:   "2949c5ea44f9027285365dc4014f1871718f42aaa86b8187b65db37dae9323ae",
         intel: "a2e7f939144061f4c6f89374a4b4461cb0443a2d5a096005b7c29cd1ff7d757e"

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
