class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "5f92f628b81f0769bb654ef429df32016398c784a99d31bbe2382498c462e9e4"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "950c8edc58ed85175d2ccda0d0fbfe29555b47e8095a72288443cd230f4f1030"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "ce39229ec6eec87fe8b79eb2aaa9450c3cbe37eda4ad20a9b22e8792e66a1c10"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "36988203a96bda66f3d8e73cb54bf8fb9ae3c3a23414212fcdc408bdd6544ddf"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
