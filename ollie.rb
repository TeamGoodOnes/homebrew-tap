require "formula"
require_relative "./lib/download_strategy"

class Ollie < Formula
    desc ""
    homepage "https://github.com/TeamGoodOnes/ollie-cli"
    head "https://github.com/TeamGoodOnes/ollie-cli.git"
    depends_on :macos
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.1.1/ollie-cli_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "508a159cfd32243b11120dc509106707d03729f99fc0e2e55be4465d6bef22fd"
      
        def install
          bin.install "ollie"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.1.1/ollie-cli_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "d76b5a2f95ba6f48bb5b116111f86b231a5207eca3ca0da60eb7466376286e73"
  
        def install
          bin.install "ollie"
        end
      end
    end
  end
