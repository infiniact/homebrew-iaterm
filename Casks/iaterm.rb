cask "iaterm" do
  version "1.1.2"

  on_arm do
    sha256 "48dd5dc6f5655798312869ed5c6ca2f8a36dbadfef6afc8e7e3d94a00a29ae5b"
    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end

  on_intel do
    sha256 "709fe54fc8569be1d37ffbe726e587df524b674d849b646e11d3c7ee4c99f1b6"
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
