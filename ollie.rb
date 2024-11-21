require "download_strategy"

class Ollie < Formula
    desc ""
    homepage "https://github.com/TeamGoodOnes/ollie-cli"
    head "https://github.com/TeamGoodOnes/ollie-cli.git"
    depends_on :macos
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.0.1/ollie-cli_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "f30ad2d07369569e52d8407165c2f24f0e8d7faa10883a7e33e1645d3b269222"
      
        def install
          bin.install "ollie"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/TeamGoodOnes/ollie-cli/releases/download/v0.0.1/ollie-cli_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "8a08ea19ff270d6f61f0be4f40cc23c1ead577fd402ae652f130399df63e7803"
  
        def install
          bin.install "ollie"
        end
      end
    end
  end