class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.4/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "4731701445d040c90059fc5e9cb2bedcd0be4976d0f4b16aa1262ce991794af2"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.4/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "eb05bda8166130479df2e53b78fc233c06b0ffe8cbbc2edeb6d64f7bd9fe7ad0"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
