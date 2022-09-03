cask "microsoft-teams-preview" do
    version "1.5.00.24264"
    sha256 "2f2c80072bfc213a347766357513d203e2608e70ddfe868c02a62de98d7aaa38"
  
    url "https://statics.teams.cdn.office.net/production-osx/#{version}/Teams_osx.pkg",
        verified: "statics.teams.cdn.office.net"
    name "Microsoft Teams Preview"
    desc "Meet, chat, call, and collaborate in just one place"
    homepage "https://teams.microsoft.com/downloads"
  
    livecheck do
      url "https://aka.ms/teamsmac"
      strategy :header_match
    end
  
    auto_updates true
  
    pkg "Teams_osx.pkg"
  
    uninstall pkgutil:   "com.microsoft.teams",
              launchctl: "com.microsoft.teams.TeamsUpdaterDaemon"
  
    zap trash: [
      "/Library/Logs/Microsoft/Teams",
      "/Library/Preferences/com.microsoft.teams.plist",
      "~/Library/Application Support/com.microsoft.teams",
      "~/Library/Application Support/Microsoft/Teams",
      "~/Library/Application Support/Teams",
      "~/Library/Caches/com.microsoft.teams",
      "~/Library/Cookies/com.microsoft.teams.binarycookies",
      "~/Library/Logs/Microsoft Teams",
      "~/Library/Preferences/com.microsoft.teams.plist",
      "~/Library/Saved Application State/com.microsoft.teams.savedState",
      "~/Library/WebKit/com.microsoft.teams",
    ]
  end
  
