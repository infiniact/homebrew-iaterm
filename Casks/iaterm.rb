cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "22e8ac5e96ba1ddcd561e9b288ffa14faac88a6365cad55b301b1fd159c19dd1",
         intel: "d3e9ee04cf7b600fa1e289dbc856254a4ca8ac53c173982781688203ad8798e2"

  url "https://github.com/infiniact/homebrew-iaterm/releases/download/v#{version}/IATerm_#{version}_#{arch}.dmg"
  name "IATerm"
  desc "AI-Powered Terminal Emulator"
  homepage "https://iaterm.infiniact.com"

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
