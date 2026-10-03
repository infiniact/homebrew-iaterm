cask "iaterm" do
  version "1.1.2"

  on_arm do
    sha256 "b6c686d22b2c3f8dd4773c7014b3c0ef069e5991b469bb763c1eadc4284e7e10"
    url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  end

  on_intel do
    sha256 "863e037cf278a1e4e3f52cf74dada35f2679a7f4bd344b8c6c3ddd6f893a6c4e"
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
