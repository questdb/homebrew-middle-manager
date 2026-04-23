class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.8/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "2bdebea378c417f6b5df757617024ee3cabb766a4324f326193e6521eb45225e"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.8/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "a71ecfce1de845d45fc12a7312b85c824674f7bedab49e8a82de854b5a04edaa"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
