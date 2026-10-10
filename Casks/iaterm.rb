cask "iaterm" do
  version "1.1.2"

  on_arm do
    sha256 "63efb14a23e59fe7f7c92f5a16b5b22dae6fa70c33d88eb55291cc3962b7e99b"

    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end
  on_intel do
    sha256 "9e3bcb16b3b101df661b3e71fd0882570696ff0c50e857dc1c2bc5534c88213a"

    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_x64.dmg"
  end

  name "IATerm"
  desc "Terminal for the AI era with multi-screen, broadcast and session memory"
  homepage "https://www.iaterm.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "IATerm.app"

  zap trash: [
    "~/.iaterm",
    "~/Library/Application Support/com.infiniact.iaterm",
    "~/Library/Caches/com.infiniact.iaterm",
    "~/Library/Preferences/com.infiniact.iaterm.plist",
  ]
end
