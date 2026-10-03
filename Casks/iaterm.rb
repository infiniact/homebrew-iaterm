cask "iaterm" do
  version "1.1.2"

  on_arm do
    sha256 "5eac18f0aa0a10dd4ec977d0be7ee7891bd3a8ad432eb5cc68cf7487405537d1"
    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end

  on_intel do
    sha256 "ffc1b0f71449ede63627542c52955c488f8b02c75f91f9a2e8b884592baaf930"
    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_x64.dmg"
  end

  name "IATerm"
  desc "AI-Powered Terminal Emulator"
  homepage "https://www.iaterm.ai"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "IATerm.app"

  zap trash: [
    "~/.iaterm",
    "~/Library/Application Support/com.infiniact.iaterm",
    "~/Library/Caches/com.infiniact.iaterm",
    "~/Library/Preferences/com.infiniact.iaterm.plist",
  ]
end
