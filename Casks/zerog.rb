cask "zerog" do
  version "1.0.3"
  sha256 :no_check

  url "https://github.com/reggiesoft-labs/zerog/releases/download/v#{version}/ZeroG_#{version}_universal.dmg"
  name "ZeroG"
  desc "Seamless mouse and keyboard sharing across LAN machines"
  homepage "https://github.com/reggiesoft-labs/zerog"

  app "ZeroG.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/ZeroG.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/com.reggiesoft.zerog",
    "~/Library/Caches/com.reggiesoft.zerog",
    "~/Library/Preferences/com.reggiesoft.zerog.plist",
    "~/Library/Saved Application State/com.reggiesoft.zerog.savedState",
  ]
end
