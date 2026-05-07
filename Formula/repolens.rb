class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "13235bd7dfdde860bd6371ca0cdbadb3d360fd31fb3d223d77efeee357721e7a"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "f7dd6590cbff88fa7e912f543934eb1d03c4c49a147450736dce86bd58719bc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "fd0b12e208e79cbb145a4142fd7ce71979c43ec6a597eee9fe1aba2772dad0d8"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "7b897fae309136cb0d41f802d6d4b995574a22f845a3d41d6a991a0fec5f6a74"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
