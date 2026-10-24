class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.5.0/yonder_0.5.0_darwin_arm64.tar.gz"
      sha256 "1c7e4a498652fe3f45efe6dc525ed9f263487b039df74c03014fb6d85b275a59"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.5.0/yonder_0.5.0_darwin_amd64.tar.gz"
      sha256 "f184cae4a15d300db4e950fbb67a0e01b400952c35457f3c8397d829e5572428"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.5.0/yonder_0.5.0_linux_arm64.tar.gz"
      sha256 "07d13cba1c52d265265199783c106c0cff1507c13176d47bf1407f590211e4ff"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.5.0/yonder_0.5.0_linux_amd64.tar.gz"
      sha256 "64f45703085e8093fa092dae188dc55d886ae89b6bb5a414a90287c6a954368f"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
