# typed: false
# frozen_string_literal: true

class Simpsons < Formula
  desc "TUI analytics dashboard for Claude Code sessions"
  homepage "https://github.com/rudrakshsisodia/simpsons"
  url "https://github.com/rudrakshsisodia/simpsons/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f0d21e8ccb8f8da51b3c24855b182e4ed7cf0c72446c94baed0ab8a02d5a2e80"
  version "0.1.0"
  license "MIT"
  head "https://github.com/rudrakshsisodia/simpsons.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    assert_predicate bin/"simpsons", :exist?
  end
end
