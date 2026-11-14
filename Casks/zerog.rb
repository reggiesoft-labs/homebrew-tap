cask "zerog" do
  version "1.1.0"
  sha256 "4e9b50a137f14ba5523b15e983f8b0ebddddee9e07c00c49e08f87440b1c339e"

  url "https://github.com/reggiesoft-labs/zerog/releases/download/v#{version}/ZeroG_#{version}_universal.dmg"
  name "ZeroG"
  desc "Seamless mouse and keyboard sharing across LAN machines"
  homepage "https://github.com/reggiesoft-labs/zerog"

  app "ZeroG.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ZeroG.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/com.reggiesoft.zerog",
    "~/Library/Caches/com.reggiesoft.zerog",
    "~/Library/Preferences/com.reggiesoft.zerog.plist",
    "~/Library/Saved Application State/com.reggiesoft.zerog.savedState",
  ]
end
