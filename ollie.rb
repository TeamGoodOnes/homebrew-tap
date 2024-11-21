require "formula"
require_relative "./lib/download_strategy"

class Ollie < Formula
    desc ""
    homepage "https://github.com/TeamGoodOnes/ollie-cli"
    head "https://github.com/TeamGoodOnes/ollie-cli.git"
    depends_on :macos
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.0.2/ollie-cli_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "1e72809d15988bb21e38d8f04b5263225b0c5e678c1a20db82de921f468a0625"
      
        def install
          bin.install "ollie"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.0.2/ollie-cli_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "7e10ae9a6984f1be7b0061144792e29dc820c86a11eac8097dcd8fa0c0ab0811"
  
        def install
          bin.install "ollie"
        end
      end
    end
  end