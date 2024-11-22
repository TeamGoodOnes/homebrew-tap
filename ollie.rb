require "formula"
require_relative "./lib/download_strategy"

class Ollie < Formula
    desc ""
    homepage "https://github.com/TeamGoodOnes/ollie-cli"
    head "https://github.com/TeamGoodOnes/ollie-cli.git"
    depends_on :macos
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.1.0/ollie-cli_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "50af17bed073d0bf6316554af99196e0c9888f7a6d1fa1e9a61935434c970da5"
      
        def install
          bin.install "ollie"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.1.0/ollie-cli_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "86fe0c4c5dc4a0ad19ff3c2cbeb4fbfd374d69f39ade3f7e0c22859b4ddf97ec"
  
        def install
          bin.install "ollie"
        end
      end
    end
  end