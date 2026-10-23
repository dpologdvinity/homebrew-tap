class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.0/yonder_0.4.0_darwin_arm64.tar.gz"
      sha256 "c76574ef259ed4b111b0ec4059bd1cf80252fc6c2f081e6e9a1badf1c18c75f8"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.0/yonder_0.4.0_darwin_amd64.tar.gz"
      sha256 "850c19d3b0af2890edde6d0b254b6dd325c41fe0c2b41fa19fe9ae7cca941040"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.0/yonder_0.4.0_linux_arm64.tar.gz"
      sha256 "85e55146ce98640a9a237ff7e1631c2609277538499f13484bc2cd57267d10f9"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.0/yonder_0.4.0_linux_amd64.tar.gz"
      sha256 "840c8189f0e4cb3bf90576aa31ee8300c1b11752a98bf3c24e20ca55a528329c"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
