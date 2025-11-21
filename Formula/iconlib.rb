class Iconlib < Formula
  desc "Bash script to restore macOS application icons trapped in the squircle shape"
  homepage "https://github.com/sabinomaggi/IconLib"
  url "https://github.com/sabinomaggi/IconLib/archive/refs/tags/v0.2.tar.gz"
  sha256 "07545d16bee6ca9fbc82b09101bc9c9f2864489d96e99321fba4a02ca03102ea"
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
