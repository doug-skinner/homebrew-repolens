class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "0e7f4f8b4fefcbddd2b8f9c6c7c005f9c4b97c090a391c13a4fbec702f88b969"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "fc1036d47f095e9548a9f23e2fe08770fbb1b39e5518a21c1a132b02ce6e395a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "ab4da0b66f4b6ec19576a976d9be3bc53fb6391e83eed69bd3139b4223518042"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "b69a4e130a40d4f65153ab7b7ff196cb2974b05e8b2031290cb9190f3a1352e5"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
