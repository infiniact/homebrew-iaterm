cask "iaterm-test" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16-1"
  sha256 arm:   "b6f43c8999f26de6b8a76e8d6deca18c5c9cf818ff7b1c41243354b7bde235c4",
         intel: "dc177a9c176bbe0ea460d2232129cec558bc03b906fddbc8478dab5e4cf2cf74"

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
