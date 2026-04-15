class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.3/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "65473de207b83df6bff194d4af10eaf4ef8aab656ac548804950fbb66c501f9f"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.3/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "b3f4d7f24e9ccf4b3d72978e9d5b4afaceb7d81bcf6612876739ef4d1253b0f3"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
