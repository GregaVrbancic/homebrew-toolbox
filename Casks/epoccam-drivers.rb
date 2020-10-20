cask 'epoccam-drivers' do
  version '2_2'
  sha256 'e00fe8dd347abd15ad72dc0982ac13c23fb50488c4625d59172c8316f13afc57'

  url "https://kinonicom.r.worldssl.net/wp-content/uploads/EpocCam-Installer_#{version}.pkg_.zip"
  name 'EpocCam Drivers'
  homepage 'http://www.kinoni.com/'

  depends_on macos: '>= :sierra'

  pkg "EpocCam Installer_#{version}.pkg"

  uninstall script:  {
                       executable: '/Library/CoreMediaIO/Plug-Ins/DAL/EpocCamPlugIn.plugin/Contents/Resources/uninst.sh',
                       sudo:       true,
                     },
            pkgutil: [
                       'com.kinoni.pkg.epoccam-installer',
                     ]
end
