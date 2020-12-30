cask 'koofr' do
    sha256 '821f50af2b27f8a3487337ecc5fbad90d6f7329e9eaff7feb2f577957597d016'

    # app.koofr.net was verified as official when first introduced to the cask
    url "https://app.koofr.net/dl/apps/osx"
    name 'Koofr'
    homepage 'https://koofr.er/'

    depends_on macos: '>= :yosemite'

    app 'Koofr.app'

  end