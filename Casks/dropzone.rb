cask 'dropzone' do
  desc 'Dropzone is a productivity app for the Mac that makes it faster and easier to move and copy files, launch applications, upload to many different services, and more.'
  version '4.1.6'
  sha256 'd5f82ebd934ad37dda5afc0933fa94c740c66e6803cfc3a9fad1bda6c719ce88'

  url "https://aptonic.com/releases/Dropzone-#{version}.zip"
  name 'DropZone'
  homepage 'https://aptonic.com/'

  depends_on macos: '>= :sierra'

  app 'Dropzone 4.app'

end