cask "iaterm" do
  version "0.1.94"

  on_arm do
    sha256 "497a8f8f88120dd2d972b3a0fd41199f5fc10672c4650e28dae342f50d03b4e4"
    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end

  on_intel do
    sha256 "bb034aa7104a230426f9823c06902bf51189eb3c3052d0549baf6c38ff2a8140"
    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_x64.dmg"
  end

  name "IATerm"
  desc "AI-Powered Terminal Emulator"
  homepage "https://www.iaterm.ai"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"
  app "IATerm.app"

  zap trash: [
    "~/.iaterm",
    "~/Library/Application Support/com.infiniact.iaterm",
    "~/Library/Caches/com.infiniact.iaterm",
    "~/Library/Preferences/com.infiniact.iaterm.plist",
  ]
end
