cask 'proxsign' do
  sha256 'b92cee68dcb6a51d3f7cd40bd35635cafceb1d5275ec142c5a996b1d08bdb3a0'

  url "https://public.setcce.si/proxsign/update/mac/SETCCE_proXSign.pkg"
  name 'proXSign'
  homepage 'https://proxsign.setcce.si/proXSignCustomerPages/index2.html'

  depends_on macos: '>= :mojave'

  pkg 'SETCCE_proXSign.pkg'

end