cask "bizbox-notch" do
  version "0.2.30"
  sha256 "5e0549001ad43ddd412ec5ee58e260989556ced5a8be5af1f2028194b6ade02c"

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
