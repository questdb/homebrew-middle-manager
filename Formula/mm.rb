class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/v0.1.2/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "e856672b1668d10847deb9056c53bd20f6f4f49904ddaf722c2fa81cc4a6d2be"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/v0.1.2/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "546dbf25980d883044f6bd4324519d8b99485fd6a84282c2a2795aa16dc10816"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
