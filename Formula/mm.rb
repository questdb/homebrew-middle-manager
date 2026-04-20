class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.7/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "dd207dd36c7f77badf5bc0a95187c1e72d9c3264ec541e6a3079148692cb2b5f"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.7/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "c9c68de3d660b818fdc6b27134d8c8442524d69129ada9628da9481d101a88a4"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
