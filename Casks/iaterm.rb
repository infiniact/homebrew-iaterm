cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.19"
  sha256 arm:   "75f8e9951d98f6beac697d1eae06351b01ae57ca43c6182d144b848d707016f7",
         intel: "9d783914d6925dba3da727191a6480ca8d472ff745f6a7a2844dd5947985ce25"

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
