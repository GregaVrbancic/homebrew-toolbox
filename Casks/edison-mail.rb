cask 'edison-mail' do
  version '0.4.96'
  sha256 '352ae70a9a0e6e91f6e273378516953022376770cc54dfdf1b3394c89324d358'

  # edison-static2.s3.us-east-2.amazonaws.com was verified as official when first introduced to the cask
  url 'https://edison-static2.s3.us-east-2.amazonaws.com/desktop/EdisonMail.dmg'
  name 'Edison Mail'
  homepage 'https://mail.edison.tech/mac'

  depends_on macos: '>= :yosemite'

  app 'Edison Mail.app'

  zap trash: [
               '~/Library/Application Support/EdisonMail',
               '~/Library/ApplicationSupport/EdisonMail',
               '~/Library/Preferences/com.edisonmail.*',
               '~/Library/Saved Application State/com.edisonmail.edisonmail.savedState',
             ]
end