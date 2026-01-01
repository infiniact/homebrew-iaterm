cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "b0c8aed0ba0c53a37cbde8e007cc420d59ae80c4449657a784a484284975c17c",
         intel: "531afba9c474c833f7b170b4bb0649dbf03843b10c4baec99d5b30ca605173b5"

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
