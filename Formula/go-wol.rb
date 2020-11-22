class GoWol < Formula
  desc "Simple wake on LAN magic packet generator for golang"
  homepage "https://github.com/sabhiram/go-wol"

  version "2.0.0"

  if OS.mac?
    url "https://github.com/sabhiram/go-wol/releases/download/#{version}/wol_darwin_amd64"
    sha256 "1dca674c9073b577fbb3616efb30eeab8c4b7e18c12bf759aed6e9852b29186c"
  else
    url "https://github.com/sabhiram/go-wol/releases/download/#{version}/wol_linux_amd64"
    sha256 "d2ff14f43850922a96f8f5f8af456917fe7d0ba42804604bb439def30e01b55e"
  end

  def install
    if OS.mac?
      bin.install "wol_darwin_amd64" => "wol"
    else
      bin.install "wol_linux_amd64" => "wol"
    end
  end

  test do
    system bin/"wol", "--version"
  end
end
