cask "bitz" do
  version "1.3.3"
  sha256 "581eca43a99ff1c1d2f9254ac935a3671a5682551b9ee564ac572a32dbd928a7"

  url "https://github.com/AkramKs/bitz-releases/releases/download/v#{version}/Bitz.dmg"
  name "Bitz"
  name "Bitz the Cyber Cat"
  desc "Cyberpunk desktop companion reacting to coding focus and AI agents"
  homepage "https://github.com/AkramKs/bitz-releases"

  depends_on macos: :sonoma

  app "Bitz.app"

  # Bitz's own data only: Application Support/Bitz/Meetings holds the user's recordings and is kept.
  # rmdir removes the Bitz folder only once it is empty.
  zap trash: [
        "~/Library/Application Support/Bitz/agent-events",
        "~/Library/Application Support/Bitz/inbox",
        "~/Library/Preferences/com.bitz.cybercat.plist",
      ],
      rmdir: "~/Library/Application Support/Bitz"
end
