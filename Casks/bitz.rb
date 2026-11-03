cask "bitz" do
  version "1.3.2"
  sha256 "dc63f3e35e9ff488fc9dfb62f6e0999329277e8d33ea2bc52c84f0ae733c7d4f"

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
