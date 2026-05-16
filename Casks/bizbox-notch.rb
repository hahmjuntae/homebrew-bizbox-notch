cask "bizbox-notch" do
  version "1.0.0"
  sha256 "83f1d7686a2535a095c553d76155a81e944a914fa02c35a474a8db1ac8396871"

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
