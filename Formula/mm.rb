class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/v0.1.1/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "c1f915eedce538ecb1085c73736c8d51923b6bdddb40a8a0c3ca88c46533f159"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/v0.1.1/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "83d931558926b4e4120450d2d09408d5a9973346f3db736f6377b479905bea52"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
