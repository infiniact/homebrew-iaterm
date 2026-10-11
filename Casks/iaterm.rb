cask "iaterm" do
  version "1.1.2"

  on_arm do
    sha256 "77fc2b39847533925a5e6c52d838599ee6cb2c111ac7f820f8b170fe77fcd56f"

    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end
  on_intel do
    sha256 "8325c0b00ed08e231c839a96fa600adcf51cff54e9478074e4fc9d481a89fa14"

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
