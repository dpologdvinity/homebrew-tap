class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.2.0/yonder_0.2.0_darwin_arm64.tar.gz"
      sha256 "0cdc18cd01df9de58de99800ebbfa9a1da290335085f7e2c099288b0b520b797"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.2.0/yonder_0.2.0_darwin_amd64.tar.gz"
      sha256 "fd3528197b6593e89030a9321fea8c5a5e664f88cd3435f52c19fc24556e1534"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.2.0/yonder_0.2.0_linux_arm64.tar.gz"
      sha256 "b71e80b8e720c4ece7511cb74ca49c17f45e01213723288d5ebf0027b9983af0"
    end
    on_intel do
      url "https://github.com/dpologdvinity/yonder/releases/download/v0.2.0/yonder_0.2.0_linux_amd64.tar.gz"
      sha256 "ac45c7a9df752eb2371cdf9a52ffa15a21cbd39004eb8e91ace0069520c10c6d"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
