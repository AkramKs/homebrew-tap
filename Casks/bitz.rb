cask "bitz" do
  version "1.3.0"
  sha256 "3fa851911702951ce9fbef90d86879556959a68aa819cb12ccabe446309a60cf"

  url "https://github.com/AkramKs/bitz-releases/releases/download/v#{version}/Bitz.dmg"
  name "Bitz"
  name "Bitz the Cyber Cat"
  desc "Cyberpunk desktop companion reacting to coding focus and AI agents"
  homepage "https://github.com/AkramKs/bitz-releases"

  depends_on macos: :sonoma

  app "Bitz.app"

  zap trash: [
    "~/Library/Application Support/Bitz",
    "~/Library/Preferences/com.bitz.cybercat.plist",
  ]
end
