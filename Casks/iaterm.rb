cask "iaterm" do
  version "1.1.2"

  on_arm do
    sha256 "72bed4112de2c816d23fdffd0fe8488d9661f9322c03df9a2a1f2d87f4db0fd6"
    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end

  on_intel do
    sha256 "b5ab53f1044ef90234d2b5029ec493be3e5a50daa31ece159bec77957902d051"
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
