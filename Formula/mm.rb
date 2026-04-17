class Mm < Formula
  desc "Dual-panel file manager TUI inspired by Far Manager, built in Rust"
  homepage "https://github.com/questdb/middle-manager"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.6/middle-manager-aarch64-apple-darwin.tar.gz"
      sha256 "7e17ba8dab472c70b9209179f2708d07b15082baf09a5bce82540876ea50db26"
    end
    on_intel do
      url "https://github.com/questdb/middle-manager/releases/download/0.1.6/middle-manager-x86_64-apple-darwin.tar.gz"
      sha256 "73fef67ca7b612ecd5a94e4acdf4f8d575af85ee6839c858f8ddc23e016e8988"
    end
  end

  def install
    bin.install "middle-manager" => "mm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mm --version 2>&1", 1)
  end
end
