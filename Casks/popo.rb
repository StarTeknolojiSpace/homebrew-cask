cask "popo" do
  version "3.34.1"
  sha256 "f0152b17c5ec3ea0f3af7bda1ef94bab4a341bdd4b3192f93b7aa5ae7e2dd92e"

  url "https://popo.netease.com/file/popomac/POPO_Mac_V#{version.dots_to_underscores}.dmg"
  name "NetEase POPO"
  desc "Instant messaging platform"
  homepage "https://popo.netease.com/"

  livecheck do
    url "http://http.popo.netease.com:8080/api/open/jsonp/check_version?device=4"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  app "popo_mac.app"

  zap trash: [
    "~/Library/Application Support/Netease/Popo",
    "~/Library/Caches/com.netease.game.popo",
    "~/Library/Preferences/com.netease.game.popo.plist",
    "~/Library/Saved Application State/com.netease.game.popo.savedState",
  ]
end
