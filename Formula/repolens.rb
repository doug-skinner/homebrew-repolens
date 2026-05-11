class Repolens < Formula
  desc "TUI dashboard for your GitHub repositories"
  homepage "https://github.com/doug-skinner/repolens"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-arm64"
      sha256 "5435dd655b2b583c192ab90427c8f01a97ecca68742cecbd95d997267f16ac80"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-darwin-x64"
      sha256 "2dee168d741f4afc0bfd27cb93c7423916f54ad82e8d03b6c94902c3e430e992"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-arm64"
      sha256 "1cb1348f23d75cbe9a1ff4c6205134b74e9c9dcef16d8b34a6aa28b31dfdc7bc"
    end
    on_intel do
      url "https://github.com/doug-skinner/repolens/releases/download/v#{version}/repolens-linux-x64"
      sha256 "641ebe06a7953a9b228cbf1e8093ac89bb8d3831928d70af3a8a16fe1a4910fa"
    end
  end

  def install
    bin.install Dir["repolens-*"].first => "repolens"
  end
end
