class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.2/yaak-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "6851050e896f795aadb3b218acc1ac7ad6a8105560b1eba44ef71b87b5dc4baa"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.2/yaak-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "aefb4817306df0359ee68d3bda0e0ad4f6df10b6be82e6ee08f2abea4915287b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.2/yaak-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9566aa16d936c09ec7720befb52d9ed81d9630059ba2a7083ccd8a994f6d177"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
