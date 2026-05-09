class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "9b2791cdbb40d1a653fbfd6a541beb95dec216bb23203bb3610abdb5e2a976b5"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "a4ad160d85f0b2474069eee2848b4bdf9d5f3d10f388bca300bd0509e4071048"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "f5239a355130167c5777da0c605858760d896469728c03ed9e5c6cb1b71b381a"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "23a73e33b4db869f6daf64456da0ffa159edb401ff8c40e8d6bdc37c386967ed"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
