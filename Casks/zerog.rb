cask "zerog" do
  version "1.0.3"
  sha256 "197bb77856112d3ce02a808ee9ae45bc3e099dffeae7cb3b7daeea4e647464da"

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
