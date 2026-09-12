class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.1/yaak-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "c111cfdd8bc095e9e6dd910192079376973f573de05abe3db61f030be3f0b332"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.1/yaak-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "705077042901374aa9505df6a52ff17bb2a754d0f2f6d4edbc45bf0f507cf9bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.1/yaak-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91dc25107cba045e95677b5595841ce6bb1aa18471a4d359f06d8be493bfa693"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.1/yaak-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1ebfe41663d1ed5ba1d5fa5ddc804476e77ae1be19a10d4b28af8a8a1d0c68b"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
