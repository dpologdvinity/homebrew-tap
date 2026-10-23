class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.3.0/yonder_0.3.0_darwin_arm64.tar.gz"
      sha256 "545e7111309da95f779937a53a64cf82e2f0166514b0d88c04825e9466f76a6d"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.3.0/yonder_0.3.0_darwin_amd64.tar.gz"
      sha256 "6c8907f93b718927fc45f397332e532120a766eac3601c308dcfd2479b259e84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.3.0/yonder_0.3.0_linux_arm64.tar.gz"
      sha256 "a141f9a54ea6d5633c4070511385765748b16bfc537b7b8e79a97439e733f1ac"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.3.0/yonder_0.3.0_linux_amd64.tar.gz"
      sha256 "db947480eb79f5b834a05f293a9cc332efaa780b0709ece990b01e84df52a8fe"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
