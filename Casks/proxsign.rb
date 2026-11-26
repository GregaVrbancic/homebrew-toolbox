cask "proxsign" do
  version "2.2.13.300"
  sha256 "a5b9b891d7d0119ca00b5cfc0d329f9c6572f190eb9f1da453dd6dcfee26e4bb"

  url "https://public.setcce.si/proxsign/update/mac/SETCCE_proXSign_#{version}.pkg"
  name "SETCCE proXSign"
  desc "Digital signing component for Slovenian e-government services"
  homepage "https://proxsign.setcce.si/proXSignCustomerPages/index2.html"

  depends_on :macos

  pkg "SETCCE_proXSign_#{version}.pkg"

  uninstall launchctl: "com.proxsign.agent",
            pkgutil:   "com.SETCCE.proXSign",
            delete:    "/Applications/SETCCE proXSign.app"
end
