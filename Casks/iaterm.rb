cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.27"
  sha256 arm:   "197be64e9d469c064bd76149e663b93ac90654e8bf7c1b847eb2c0b615018d58",
         intel: "dd286abd9199566ccbdce5df46ba5bd16ef40f035f367d1a78b4cb27a1120ab1"

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
