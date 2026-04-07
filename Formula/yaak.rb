class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.0.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.7/yaak-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "c00ce06e9aa74b8afbfc02d1893afac04dc359ec11de5129fd8f9c85d9147047"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.7/yaak-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "3b2a8866372c16cd3f316bd1efbb454cbf96b39cb78ae515f92033ce2e43ea27"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.7/yaak-v0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1daac816361e987f6c9005051fd93e23c8cfb1ed75ce2ca1c54cb247b4e8ab2"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
