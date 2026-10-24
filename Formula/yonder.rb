class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.4/yonder_0.4.4_darwin_arm64.tar.gz"
      sha256 "b355818cf26a005b2c482e1112efd97205f02d1a460bdfe45cab94ef0983ab05"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.4/yonder_0.4.4_darwin_amd64.tar.gz"
      sha256 "cc96f72bccf0e733b0a6b0b0fe1762f2dc5870a347cefc9dc8f3146643984a51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.4/yonder_0.4.4_linux_arm64.tar.gz"
      sha256 "0dbb84d3e30059a71b1412b8d98bde73fa80f03a98370dfdc6050c1b38447c02"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.4/yonder_0.4.4_linux_amd64.tar.gz"
      sha256 "3db41d60aa6dac726518d72044eadf5ecfa9100cdf8a77d47a1de7fb885c822c"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
