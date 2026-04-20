cask "bizbox-notch" do
  version "0.2.20"
  sha256 "96cfc5197e9c949bf149e84194ec0f988a0aa7adad65abaf3e84c8f1ac8baa5f"

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
