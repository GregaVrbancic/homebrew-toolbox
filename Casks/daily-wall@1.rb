cask 'daily-wall@1' do
  version '1.1.2'
  sha256 '6772023d0990db97ff35d7aa970e6f9879f1bc4a9500bb12c96e57f0e11a8004'

  # storage.googleapis.com/updates.dailywall.space/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/updates.dailywall.space/DailyWall-#{version}.dmg"
  name 'DailyWall'
  homepage 'https://dailywall.space/'

  app 'DailyWall.app'

  zap trash: [
               '~/Library/Application Support/DailyWall',
               '~/Library/ApplicationSupport/DailyWall',
               '~/Library/Logs/DailyWall',
             ]
end
