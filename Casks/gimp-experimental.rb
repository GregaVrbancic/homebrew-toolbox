cask "gimp-experimental" do
    version "2.10.22"
    sha256 "ae83a5d90e057902b85a8fbeff0765df2fee90a996d6323ca5521c7aeac6a73b"

    url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/macos/gimp-#{version}-x86_64-experimental.dmg"
    appcast "https://download.gimp.org/pub/gimp/v#{version.major_minor}/macos/"
    name "GIMP - Experimental"
    name "GNU Image Manipulation Program"
    desc "Free and open-source image editor"
    homepage "https://www.gimp.org/"

    app "GIMP-#{version.major_minor}.app", target: "GIMP-#{version.major_minor}-experimental.app"
    binary "#{appdir}/GIMP-#{version.major_minor}-experimental.app/Contents/MacOS/gimp", target: "gimp-experimental"

    postflight do
      set_permissions "#{appdir}/GIMP-#{version.major_minor}-experimental.app/Contents/MacOS/gimp", "a+rx"
    end

    zap trash: [
      "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
      "~/Library/Application Support/Gimp",
      "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
    ]
  end