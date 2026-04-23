cask "bizbox-notch" do
  version "0.2.25"
  sha256 "82a8976f4b31173b9fb24f14699a064ebcf6f04c508b1bce808f3cdeb834f2be"

  url "https://github.com/hahmjuntae/bizbox-notch/releases/download/v#{version}/Bizbox-Notch-#{version}.dmg"
  name "Bizbox Notch"
  desc "Menu bar attendance helper for Bizbox"
  homepage "https://github.com/hahmjuntae/bizbox-notch"

  app "Bizbox Notch.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Bizbox Notch.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.hahmjuntae.bizbox-notch.plist"
  ]
end
