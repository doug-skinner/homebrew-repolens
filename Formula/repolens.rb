class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "fe1b6e5df0fa073a8a7a7d31a731efa77aa6fe0b7c3a9810166ac981ae5749b5"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "922ebe6208e722e71a18d99850bb02747486e84d6ba969a16b6cd51c21d554f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "0ac7eae22d3f1709dc17c374757fe0b45c3612b7675ee19a4a84ce2d9d010f71"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "9669af99e3153c7b457017909f44cdf8815c270e59995afdf18f071895488870"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
