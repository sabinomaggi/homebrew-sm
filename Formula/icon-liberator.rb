class IconLiberator < Formula
  desc "Bash script to restore macOS application icons trapped in the squircle shape"
  homepage "https://github.com/sabinomaggi/IconLiberator"
  url "https://github.com/sabinomaggi/IconLiberator/archive/refs/tags/v0.1.tar.gz"
  sha256 "e1fee6100b580d65e31dc854273a1aa85e02c49f3dd2c5cd5ed454ca5aa64d51"
  license "GPL-3.0-or-later"

  depends_on :macos
  depends_on "fileicon"

  def install
    bin.install "icon-liberator"
    # man1.install "man/icon-liberator.1"
  end

  test do
    # system bin/"icon-liberator", "-h"
    stdout = shell_output "#{bin}/icon-liberator -h"
    assert_includes stdout, "usage: icon-liberator -f /path/to/applist [-u] [-h]"
  end
end
