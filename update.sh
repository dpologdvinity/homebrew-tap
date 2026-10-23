#!/usr/bin/env bash
# Rewrites Formula/yonder.rb for the latest yonder release. Prints "unchanged" or the new version.
set -euo pipefail
tag=$(curl -fsSL https://api.github.com/repos/dpologdvinity/yonder/releases/latest | sed -n 's/.*"tag_name": *"\(v[^"]*\)".*/\1/p')
ver=${tag#v}
if grep -q "version \"$ver\"" Formula/yonder.rb; then echo unchanged; exit 0; fi
sums=$(curl -fsSL "https://github.com/dpologdvinity/yonder/releases/download/$tag/checksums.txt")
sum() { echo "$sums" | awk -v f="yonder_${ver}_$1.tar.gz" '$2==f {print $1}'; }
url() { echo "https://github.com/dpologdvinity/yonder/releases/download/$tag/yonder_${ver}_$1.tar.gz"; }
cat > Formula/yonder.rb <<RB
class Yonder < Formula
  desc "Open your localhost site on your phone: your site, over yonder"
  homepage "https://github.com/dpologdvinity/yonder"
  version "$ver"
  license "MIT"

  on_macos do
    on_arm do
      url "$(url darwin_arm64)"
      sha256 "$(sum darwin_arm64)"
    end
    on_intel do
      url "$(url darwin_amd64)"
      sha256 "$(sum darwin_amd64)"
    end
  end

  on_linux do
    on_arm do
      url "$(url linux_arm64)"
      sha256 "$(sum linux_arm64)"
    end
    on_intel do
      url "$(url linux_amd64)"
      sha256 "$(sum linux_amd64)"
    end
  end

  def install
    bin.install "yonder"
  end

  test do
    assert_match "yonder #{version}", shell_output("#{bin}/yonder --version")
  end
end
RB
grep -q 'sha256 ""' Formula/yonder.rb && { echo "missing checksum" >&2; exit 1; }
echo "$ver"
