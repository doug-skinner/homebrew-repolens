class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "91280fcbd330ecb1eed68ebbd910a408ddf0dca87749a02bd860d470af44692d"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "7b2260f16343537e26ba3931cd7e3d3936004c0c88f65541c652caef3602910e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "f1de083c8e2b11ac7aaf428c957fa9d7f8a0cd95ebba0a2e9692dfef877313bd"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "a1dfe2d2671debd48cdd4cb53c69eadbe0b9e2b8129724a89941a1a778aad0e9"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
