require "formula"
require_relative "./lib/download_strategy"

class Ollie < Formula
    desc ""
    homepage "https://github.com/TeamGoodOnes/ollie-cli"
    head "https://github.com/TeamGoodOnes/ollie-cli.git"
    depends_on :macos
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.1.2/ollie-cli_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "1a33557257ff8761e6aad5a4a15914f4a057713081799afe63a1af6cad611ccd"
      
        def install
          bin.install "ollie"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.1.2/ollie-cli_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "dd3701a920f5b5adf91af5e1754faacb1c57ae8aecf4007569e007965c748670"
  
        def install
          bin.install "ollie"
        end
      end
    end
  end
