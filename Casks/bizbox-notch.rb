cask "bizbox-notch" do
  version "0.2.31"
  sha256 "87bcaa39d2131e058d33c76c11b4bab749adac0d6f82d2c8dcec29232d1665b1"

  url "https://github.com/hahmjuntae/bizbox-notch/releases/download/v#{version}/Bizbox-Notch-#{version}.dmg"
  name "Bizbox Notch"
  desc "Menu bar attendance helper for Bizbox"
  homepage "https://github.com/hahmjuntae/bizbox-notch"

  app "Bizbox Notch.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Bizbox Notch.app"]
  end

  zap trash: "~/Library/Preferences/com.hahmjuntae.bizbox-notch.plist"
end
