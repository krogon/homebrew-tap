class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github."
  homepage "https://warrensbox.github.io/hubapp"
  url "https://github.com/warrensbox/hubapp/releases/download/0.2.126/hubapp_0.2.126_darwin_amd64.tar.gz"
  version "0.2.126"
  sha256 "3dcec26c9dcbffb6fbe8ab704107a78730049680ed30ffb194c20810e5d0fcc4"

  def install
    bin.install "hubapp"
  end

  def caveats; <<~EOS
    Type 'hubapp install user/repo' on your command line and choose the app version that you want from the dropdown from the GitHub repo. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/hubapp --version"
  end
end
