cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.23"
  sha256 arm:   "5ce30f814496ee57bb7587560f8c0574f68fd2cc257792c78eaab6b3b54bd65d",
         intel: "44fa7d64bf807e380495a97781c68b9f02f18558c8d54bcdedc6fc6f1c60f419"

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
