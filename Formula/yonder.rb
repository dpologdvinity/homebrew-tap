class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.1/yonder_0.6.1_darwin_arm64.tar.gz"
      sha256 "2309cb9f5ac7d0193e812510397edd6d25fd7cce140b2be417e1649d573e7b9c"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.1/yonder_0.6.1_darwin_amd64.tar.gz"
      sha256 "c4dd86bc0dbdeb2158c9135dad70d9868d573228743afd00b20e623b0b3e3732"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.1/yonder_0.6.1_linux_arm64.tar.gz"
      sha256 "6051d1e0501570ab7932c40ff3252ff32d61cc6b369a85448de6f4a40941f1e3"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.6.1/yonder_0.6.1_linux_amd64.tar.gz"
      sha256 "1777cf2cf4b818fafc5ea57de444b467f62d5d755769f5d2886fca74afe69352"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
