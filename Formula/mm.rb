class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/v0.1.0/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "28f1a545faacc550ac46cf414cdf3a64e0a891768bc1ec83e29a050ef587ae09"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/v0.1.0/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "b2c916e30c318407cb8aebbefd576a04b4c698da83a48ccc68f14dee38e780d7"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
