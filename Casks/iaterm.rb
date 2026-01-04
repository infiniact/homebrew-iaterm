cask "iaterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "e19cf4141535b31d55f3b4b2e18f62db0890fa708bf6d83a561847020f9a4589",
         intel: "655298af0e2b8fbeb7b1325b8dd65baeb79ac6415447c3da0ec2146118cbb42b"

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
