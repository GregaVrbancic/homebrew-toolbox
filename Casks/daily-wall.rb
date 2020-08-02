cask 'daily-wall' do
  version '2.0.1'
  sha256 'a017bd419608f1c072767252e261424de2463876162d196a5ef6453092fb3582'

  # dailywall-updates.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://dailywall-updates.s3-us-west-2.amazonaws.com/DailyWall-#{version}.dmg"
  name 'DailyWall'
  homepage 'https://dailywallapp.com/'

  app 'DailyWall.app'

  zap trash: [
               '~/Library/Application Support/DailyWall',
               '~/Library/Application Support/com.dailywallapp.app',
               '~/Library/ApplicationSupport/DailyWall',
               '~/Library/Caches/com.dailywallapp.app',
               '~/Library/Logs/DailyWall',
               '~/Library/Preferences/com.dailywallapp.app.plist',
               '~/Library/Preferences/im.rdev.dailywall.*',
             ]
end
