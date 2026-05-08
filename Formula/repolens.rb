class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "c3be0cf658f0c56e6751cd290a5651b0b11f10107e5978f09961d31db7b641ba"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "26e7455b9a7a23daa36154a713165b8746c3765f898e1bafb1889b35e7e7bcc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "bd27e5ad912e4af17902d26c3e229f9e2cabb645e0dd1a4883cae21f49afc907"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "62544afc08a3542d8d086f8fb6bf5eb88c888fbe4a46a5334ffa5c8ea65812ea"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
