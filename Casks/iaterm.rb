cask "iaterm" do
  version "1.1.2"

  on_arm do
    sha256 "84b91b19b776f19569128fb674a3fa54ee75abd0fc2a58636f1f4867d9e02482"

    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end
  on_intel do
    sha256 "75b0918e73b1d801124db6dd8f3420dd0e71a3f204812cd80ba613407fae0d79"

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
