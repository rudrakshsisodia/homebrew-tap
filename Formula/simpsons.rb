class Simpsons < Formula
  desc "TUI analytics dashboard for Claude Code sessions"
  homepage "https://github.com/rudrakshsisodia/simpsons"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.1/simpsons_0.1.1_darwin_arm64.tar.gz"
      sha256 "3db19769a1ec6b537ae9bf0a68adf7ccc864da0becbaa775b3db721385419a0f"
    else
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.1/simpsons_0.1.1_darwin_amd64.tar.gz"
      sha256 "417c52b3f8865c692d98187f3ca574c9c3497f1f2e6d8fcac19d348da3425c06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.1/simpsons_0.1.1_linux_arm64.tar.gz"
      sha256 "20e4fbaf3f1c5f5444dc128bdc2026538b500483023331f359165ba4ab991891"
    else
      url "https://github.com/rudrakshsisodia/simpsons/releases/download/v0.1.1/simpsons_0.1.1_linux_amd64.tar.gz"
      sha256 "9d94fb28831195805972dc2f17f824a6f128f0a78272d4d572a1389000ffd8f9"
    end
  end

  def install
    bin.install "simpsons"
  end

  test do
    assert_match "simpsons", shell_output("#{bin}/simpsons --version 2>&1", 0)
  end
end
