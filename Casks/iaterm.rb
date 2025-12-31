cask "iaterm" do
  version "0.1.0"
  sha256 :no_check
  url "https://github.com/infiniact/iaterm/releases/download/v#{version}/IATerm_#{version}_arm64.dmg"
  name "IATerm"
  desc "AI-Powered Terminal Emulator"
  homepage "https://www.infiniact.com"

  depends_on macos: ">= :catalina"
  app "IATerm.app"
end
