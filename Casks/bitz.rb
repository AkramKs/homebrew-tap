cask "bitz" do
  version "1.1.0"
  sha256 "3e6fb4053b31c2db22f9f67bcf039a824cf67d63e77fb36510ecd090a7d23752"

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

  caveats <<~EOS
    Bitz is currently in free Public Beta and uses ad-hoc code signing
    (Apple Developer ID notarization will follow at commercial launch).

    If macOS Gatekeeper quarantines or blocks Bitz on first launch
    (macOS 15 Sequoia+ removed the right-click -> Open shortcut), run:
      xattr -cr /Applications/Bitz.app
    Or open:
      System Settings -> Privacy & Security -> Open Anyway

    If Meeting Recorder permissions stop working after a Beta update,
    toggle Microphone / Screen Recording off and on in System Settings
    -> Privacy & Security, or reset TCC grants with:
      tccutil reset All com.bitz.cybercat
  EOS
end
