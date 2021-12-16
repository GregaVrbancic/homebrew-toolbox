cask 'proxsign' do
  version :latest
  sha256 :no_check

  url "https://public.setcce.si/proxsign/update/mac/SETCCE_proXSign.pkg"
  name 'proXSign'
  homepage 'https://proxsign.setcce.si/proXSignCustomerPages/index2.html'

  depends_on macos: '>= :catalina'

  pkg 'SETCCE_proXSign.pkg'

end