class GoWol < Formula
  desc "Simple wake on LAN magic packet generator for golang"
  homepage "https://github.com/sabhiram/go-wol"

  version "1.1.2"

  if OS.mac?
    url "https://github.com/sabhiram/go-wol/releases/download/#{version}/wol_darwin_amd64"
    sha256 "b6f999ff2cb6e54a4bc9248c4b5e852a499b98b66bbd2a6bd673e4eb72b3b6a2"
  else
    url "https://github.com/sabhiram/go-wol/releases/download/#{version}/wol_linux_amd64"
    sha256 "640ae511b5328f6148d30c654587934b0e270f3f3865800e68a6a8f687323960"
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
