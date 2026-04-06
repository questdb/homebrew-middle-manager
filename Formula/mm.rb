class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/v0.0.2/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "a6da056df405c0fb6528f333a112ba95447c53418021678fe5ea2786a9ae05d0"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/v0.0.2/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "cbb8c2c86a2f0c80b98138a0ae41c55555e05ee3aeab70fd555154b9cf0d7939"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
