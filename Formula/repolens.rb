class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "8880f370dbb408d3c73e47e757fd7fa6857a749edff0fc6520acd82365104870"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "b43b05f8d2dc6ec305e2ad5589b24f0d7f64f63df40e9f257423c23e030201a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "4691111ef3c5308d9c9037035cb0f5d08f15e2c95785521ff62f6ef9d1c73517"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "f296bdd5d10e7a64074c1e3116767f20b8551b39cb057e1a8d0cdfe02de19d6d"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
