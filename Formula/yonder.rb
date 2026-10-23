class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.1/yonder_0.1.1_darwin_arm64.tar.gz"
      sha256 "0a0907ec6272b83d49bdc872f74ff5330ec295b2b331a755a5c3871ca38e3a77"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.1/yonder_0.1.1_darwin_amd64.tar.gz"
      sha256 "f422e88bdc356777bb32a8a139ef644e9816442fc9695db73ab6a044b5fc32e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.1/yonder_0.1.1_linux_arm64.tar.gz"
      sha256 "c0481161c939537ac8852e6360919e8c7ef128b986da6a0b87c35476a4e000ed"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.1.1/yonder_0.1.1_linux_amd64.tar.gz"
      sha256 "974af61bf1ab388b7d38ec704400f32695d41770168e65f43e8a1aaaf818a6d1"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
