class GoWol < Formula
  desc "Simple wake on LAN magic packet generator for golang"
  homepage "https://github.com/sabhiram/go-wol"

  version "2.0.1"
  if OS.mac?
    url "https://github.com/sabhiram/go-wol/releases/download/v#{version}/wol_darwin_amd64"
    sha256 "9c292e17d4a9e3830a4ef1cc5b351ff15096d166d2bb74e5a35001130146d9a0"
  else
    url "https://github.com/sabhiram/go-wol/releases/download/v#{version}/wol_linux_amd64"
    sha256 "be82d36dc257d3643abfaa9077c5b3ffbb2dfb8c987054a020969a0ee96676ab"
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
