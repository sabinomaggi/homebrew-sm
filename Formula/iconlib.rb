class Iconlib < Formula
  desc "Bash script to restore macOS application icons trapped in the squircle shape"
  homepage "https://github.com/sabinomaggi/IconLib"
  url "https://github.com/sabinomaggi/IconLib/archive/refs/tags/v0.5.tar.gz"
  sha256 "15559cf5debaf0485beadac645a6262e2f23987d00025b907bc911934a783a26"
  license "GPL-3.0-or-later"

  depends_on "fileicon"
  depends_on :macos

  def install
    bin.install "iconlib"
    # man1.install "man/iconlib.1"
  end

  test do
    # system bin/"iconlib", "-h"
    stdout = shell_output "#{bin}/iconlib -h"
    assert_includes stdout, "usage: iconlib -f /path/to/applist [-u] [-h]"
  end
end
