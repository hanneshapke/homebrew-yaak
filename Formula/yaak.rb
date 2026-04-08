class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.0/yaak-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "af9721efd96ae516f3da2e101b7f7c4791dc8e398856f30d2ee6d79dfa3a5c12"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.0/yaak-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c2b39074ee67d8c42e644ee7236a1e8779a325ffe4cc938d1404ceffdfc6a46"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.0/yaak-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd37c9d0d79f2a9a6624601a58177ea7653e453cbd6c618eb3f38d7f063e17c8"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
