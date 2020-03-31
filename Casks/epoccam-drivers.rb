cask 'epoccam-drivers' do
  version '1_7'
  sha256 'd1a0681a026917476e87f946653ed1107702f6416f4fa26b40c6a014ee7b902a'

  url "http://kinoconsole.kinoni.com/EpocCam%20Installer_#{version}.pkg.zip"
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
