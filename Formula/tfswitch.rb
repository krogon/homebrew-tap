class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher"
  url "https://github.com/warren-veerasingam/terraform-switcher/releases/download/0.2.193/terraform-switcher_0.2.193_darwin_amd64.tar.gz"
  version "0.2.193"
  sha256 "1bcf451e61ddf02a88b9e12e95bf4884d6d67196475a7b611eedc256149a2775"
  
  conflicts_with "terraform"

  def install
    bin.install "tfswitch"
  end

  def caveats; <<~EOS
    Type 'tfswitch' on your command line and choose the terraform version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/tfswitch --version"
  end
end