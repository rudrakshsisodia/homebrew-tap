class Simpsons < Formula
  desc "TUI analytics dashboard for Claude Code sessions"
  homepage "https://github.com/rudrakshsisodia/simpsons"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.2/simpsons_0.1.2_darwin_arm64.tar.gz"
      sha256 "2c7908e00717e7025e104cc06cffb1f4765a624c2208109511064dd880d639fb"
    else
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.2/simpsons_0.1.2_darwin_amd64.tar.gz"
      sha256 "81494b4cf050664843d1cc5c3ddc4c094a922d96155826065e4880b57f67c66d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.2/simpsons_0.1.2_linux_arm64.tar.gz"
      sha256 "c42791d85ac2681157019cb6a4900380d78e3da3020ba0525d4079a801f23b6b"
    else
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.2/simpsons_0.1.2_linux_amd64.tar.gz"
      sha256 "178ebe50b7ea35bca2d0ee369540554f54052754eca1971cc867966620f82397"
    end
  end

  def install
    bin.install "simpsons"
  end

  test do
    assert_match "simpsons", shell_output("#{bin}/simpsons --version 2>&1", 0)
  end
end
