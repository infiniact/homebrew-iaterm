cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-11"
  sha256 arm:   "36b374f57ef533a307925901765a0bad30cb813a54597e23c57f848f1108b2b5",
         intel: "a426a3ce8bf47de7233955fc3f5721ad7c30adda4549502b38c7313600da88c5"

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
