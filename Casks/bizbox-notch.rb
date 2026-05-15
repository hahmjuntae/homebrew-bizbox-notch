cask "bizbox-notch" do
  version "0.2.32"
  sha256 "bfafe765462a27bbe03840e7185d79778db64e52bc36f5721715d8a4b14a4276"

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
