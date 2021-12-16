cask 'epoccam-drivers' do
  version '3_3'
  sha256 'a676c29ea85cac2d7568de554f946bfa7523a8acd49f488034c1a0a1a50d8d39'

  url "https://edge.elgato.com/egc/macos/epoccam/EpocCam_Installer_#{version}.pkg"
  name 'EpocCam Drivers'
  homepage 'http://www.kinoni.com/'

  depends_on macos: '>= :mojave'

  pkg "EpocCam_Installer_#{version}.pkg"

  uninstall script:  {
                       executable: '/Library/CoreMediaIO/Plug-Ins/DAL/EpocCamPlugIn.plugin/Contents/Resources/uninst.sh',
                       sudo:       true,
                     },
            pkgutil: [
                       'com.kinoni.pkg.epoccam-installer',
                     ]
end
