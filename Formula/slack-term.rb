class SlackTerm < Formula
    desc "Slack client for your terminal"
    homepage "https://github.com/erroneousboat/slack-term"

    version "0.5.0"

    if OS.mac?
      url "https://github.com/erroneousboat/slack-term/releases/download/v#{version}/slack-term-darwin-amd64"
      sha256 "3645c5b7a189222d1ba6472eaab83b8fc87d3bcaeb67383077de81920c385f42"
    else
      url "https://github.com/erroneousboat/slack-term/releases/download/v#{version}/slack-term-linux-amd64"
      sha256 "33bdebda9746732624a9b2e1d4156117501bbb5bc6c5c53353eaf6bea9309415"
    end

    def install
      if OS.mac?
        bin.install "slack-term-darwin-amd64" => "slack-term"
      else
        bin.install "slack-term-linux-amd64" => "slack-term"
      end
    end

    test do
      system bin/"slack-term", "--help"
    end
  end
