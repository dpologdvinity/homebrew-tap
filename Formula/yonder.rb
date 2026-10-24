class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.3/yonder_0.4.3_darwin_arm64.tar.gz"
      sha256 "448fe4b96e98b7510f7dc3fe6f73b94de2cf2d733ae7727755e040598f3a996c"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.3/yonder_0.4.3_darwin_amd64.tar.gz"
      sha256 "78d59d7e22ff950cff4a94646da89ca0922f706f8ca3ded401c7e7ca8bb6c1ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.3/yonder_0.4.3_linux_arm64.tar.gz"
      sha256 "7cd1a1f28e7362040ff8116a0d1226dea1ff6b261019f80805c11ce0cae539ff"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.3/yonder_0.4.3_linux_amd64.tar.gz"
      sha256 "1e7352e4cd59ccc70a905b2cf7640b1c063a20e95739bccf0e8e8496921bf559"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
