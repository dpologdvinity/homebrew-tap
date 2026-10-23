class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.2/yonder_0.4.2_darwin_arm64.tar.gz"
      sha256 "fadc6b03620dda39526f24217d94f27ddec24252bbd23a340898073faaffbfa6"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.2/yonder_0.4.2_darwin_amd64.tar.gz"
      sha256 "f37406627d795f942b0710ef7ac2a597951bb207efa31a5619dccf6de845ff62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.2/yonder_0.4.2_linux_arm64.tar.gz"
      sha256 "4e815aea826000c656a2fc9bb7bac0250f887d1f666cc12ade883bc6f3626d88"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.4.2/yonder_0.4.2_linux_amd64.tar.gz"
      sha256 "91446612078f99a7d5ef78a2afe5635ec341028c85da18843e430c3bcc6fe993"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
