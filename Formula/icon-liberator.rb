class IconLiberator < Formula
  desc "A bash script to restore macOS application icons trapped in the squircle shape"
  homepage "https://github.com/sabinomaggi/IconLiberator"
  url "https://github.com/sabinomaggi/IconLiberator/archive/refs/tags/v0.1.tar.gz"
  sha256 "8d05fa39fa2981ba76fbef8bd595aa5b39599318aac58dd0e67580dd846b7922"
  license "GPL-3.0-or-later"

  depends_on :macos
  depends_on "fileicon"

  def install
    bin.install "bin/icon-liberator"
    # man1.install "man/icon-liberator.1"
  end

  # test do
  #   # system bin/"icon-liberator", "-h"
  #   stdout = shell_output "#{bin}/icon-liberator -h"
  #   assert_includes stdout, "usage: icon-liberator -f /path/to/applist [-u] [-h]"
  # end
end