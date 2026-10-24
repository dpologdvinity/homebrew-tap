class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.0/yonder_0.6.0_darwin_arm64.tar.gz"
      sha256 "cbfddf906df07cecd2eafb639379cebb45b2baef3359370d19c8c5cb437efa66"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.0/yonder_0.6.0_darwin_amd64.tar.gz"
      sha256 "68d41d0038e1914235b692d9b8a7c1a6e260de73b9739ee234b1417d352e5d70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.0/yonder_0.6.0_linux_arm64.tar.gz"
      sha256 "6000fb16b76691d9036e3f7b0f0e5b291fa3dfa9e5b392d1cfae60a0a137076f"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.0/yonder_0.6.0_linux_amd64.tar.gz"
      sha256 "03fc490263cd539bfc5a2a2a03f7ab21c1802fef995ec4aa1cc2d319d2433da5"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
