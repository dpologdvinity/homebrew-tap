class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.1/yonder_0.4.1_darwin_arm64.tar.gz"
      sha256 "be6c07d0978ae2ab235efef78baa39fbcd2fca4247e75fddb3d59b0adc2c11ec"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.1/yonder_0.4.1_darwin_amd64.tar.gz"
      sha256 "aca42001f2872526ebbcd26a2e1086a2e93e22edfbea95f589e9756f506f6a0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.1/yonder_0.4.1_linux_arm64.tar.gz"
      sha256 "a23c068b837c1f893953f6af119d638f715616398b37408af71c22c8de926e84"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.1/yonder_0.4.1_linux_amd64.tar.gz"
      sha256 "7240624227207d91007e07c6a68075dbf524e8cd1116d03f01c4fde4e808f3cd"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
