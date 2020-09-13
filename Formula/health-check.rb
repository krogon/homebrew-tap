# This file was generated by GoReleaser. DO NOT EDIT.
class HealthCheck < Formula
  desc "The `health-check` command line tool concurrently checks all target groups's health status"
  homepage "https://warrensbox.github.io/health-check"
  version "0.1.93"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/warrensbox/health-check/releases/download/0.1.93/health-check_0.1.93_darwin_amd64.tar.gz"
    sha256 "c1fb1749612f2a77945a2ec62a3026d981d97c864dc07de77aba851226025298"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/health-check/releases/download/0.1.93/health-check_0.1.93_linux_amd64.tar.gz"
      sha256 "3ab0df34b5122d1d9e4e991df9aae5532c1b651609be046b5223c48862250c25"
    end
  end

  def install
    bin.install "health-check"
  end

  def caveats; <<~EOS
    The `health-check` command line tool concurrently checks all target groups's health status
  EOS
  end

  test do
    system "#{bin}/health-check --version"
  end
end
