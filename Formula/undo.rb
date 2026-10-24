class Undo < Formula
  desc "Ctrl-Z for your terminal and your AI agent"
  homepage "https://github.com/dpologdvinity/undo"
  version "0.1.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/dpologdvinity/undo/releases/download/v0.1.0/undo-cli-aarch64-apple-darwin.tar.xz"
      sha256 "39cf6d3fe10c02c00dcb2aef61880b562cfa2b3f4263833f9e30fc7143b3123f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dpologdvinity/undo/releases/download/v0.1.0/undo-cli-x86_64-apple-darwin.tar.xz"
      sha256 "3be6e9d53d38e17a3a7bd8b20a8351313e52a66da7f4f0b38b479bca2dafabe4"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/dpologdvinity/undo/releases/download/v0.1.0/undo-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "15f3f95ff383500bcca3b1cb025d4d7ad1aec331b93df9d2c253b283abddaeb2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dpologdvinity/undo/releases/download/v0.1.0/undo-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7a2b1b05779db0207d8b5ea8a57801223d909918ff40ffe14f0974121c19af93"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "undo"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "undo"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "undo"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "undo"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
