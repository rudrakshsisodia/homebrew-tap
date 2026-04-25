class Simpsons < Formula
  desc "TUI analytics dashboard for Claude Code sessions"
  homepage "https://github.com/rudrakshsisodia/simpsons"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.0/simpsons_0.1.0_darwin_arm64.tar.gz"
      sha256 "731b4095a288ec999b39c68699a6fb5dd66d2e9ea39a34fb5c228c7f838f7e38"
    else
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.0/simpsons_0.1.0_darwin_amd64.tar.gz"
      sha256 "230c5db65a72730f145ea9663855aa053f42cc588ae4d8bf5216ac02d7d717df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.0/simpsons_0.1.0_linux_arm64.tar.gz"
      sha256 "96f9e3d6f25b5df3a56f44eadbc8413b3cfbfa5e40edb110386842aaa8328ced"
    else
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.0/simpsons_0.1.0_linux_amd64.tar.gz"
      sha256 "38e2ef110125166ff70f2d3b2f08357cc535b8ec13cdea71439bc8c80f96e3ba"
    end
  end

  def install
    bin.install "simpsons"
  end

  test do
    assert_match "simpsons", shell_output("#{bin}/simpsons --version 2>&1", 0)
  end
end
