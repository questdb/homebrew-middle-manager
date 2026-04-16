class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.5/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "9a87d4ddf29ee9711240293720a3b1b05708f19325c87b10ce040a90aad5512a"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.5/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "53c66afbdbcfcb65803f64e60f817e7243b04d0fba94a4d8a63adb444d0c644c"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
