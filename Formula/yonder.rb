class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.0/yonder_0.1.0_darwin_arm64.tar.gz"
      sha256 "f143c084deecb7130c75f1e4532c5d757ad6b6cd9aba1f72944a3c17e076016b"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.0/yonder_0.1.0_darwin_amd64.tar.gz"
      sha256 "7ddacc588e5f753ba66f0b020ab08539ea652e49c97a942ba00df7f09cfea7bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.0/yonder_0.1.0_linux_arm64.tar.gz"
      sha256 "596385e9de591003fc3685a48fb607aeb0ac3f209c1bfb2c3f4fbe4adcc4bf12"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.0/yonder_0.1.0_linux_amd64.tar.gz"
      sha256 "dd55e989b3c53d719a523c9e3ac009dda05c10d619159f5b57e6986c694c991c"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
