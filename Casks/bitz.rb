cask "bitz" do
  version "1.1.0"
  sha256 "23a25a8bc4a968db1001e6002fdb49636b74895f04849b89dd31817f701e9ef1"

  url "https://github.com/AkramKs/bitz-mac/releases/download/v#{version}/Bitz.dmg"
  name "Bitz"
  name "Bitz the Cyber Cat"
  desc "Cyberpunk desktop companion reacting to coding focus and AI agents"
  homepage "https://github.com/AkramKs/bitz-mac"

  depends_on macos: ":sonoma"

  app "Bitz.app"

  zap trash: [
    "~/Library/Application Support/Bitz",
    "~/Library/Preferences/com.bitz.cybercat.plist",
  ]
end
