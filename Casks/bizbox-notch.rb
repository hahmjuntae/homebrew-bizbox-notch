cask "bizbox-notch" do
  version "1.0.0"
  sha256 "7fc92797eec2f60c1abadc2b44f6e6737ad748a22eee639c7225f270848f6b8c"

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
