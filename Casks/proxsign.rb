cask 'proxsign' do
  sha256 '085b7d017c2145b32116b26f296576bb61d0492ee8060cf465418348090663de'

  url "https://public.setcce.si/proxsign/update/mac/SETCCE_proXSign.pkg"
  name 'proXSign'
  homepage 'https://proxsign.setcce.si/proXSignCustomerPages/index2.html'

  depends_on macos: '>= :mojave'

  pkg 'SETCCE_proXSign.pkg'

end