cask "bitz" do
  version "1.3.1"
  sha256 "c23af1b93766e6853250845eb075ae8e59ad23a566e30b6a521319442f21cc8e"

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
