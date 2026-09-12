class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.2/yaak-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "8a2c6957889a03b2d38e67b1151a45fa0f902f936128c4352b77b0994072ee6d"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.2/yaak-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "0af89a6feea58fcdf96c507985caec137810feea1a4adcac7dd013a906664c4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.2/yaak-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d2c15099c57b21fb47e497ceaad8d590d0a1b150346f3392b29c4a7810ed35b"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.2.2/yaak-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30f3af237580161c1e4417a6fbfe2cfa80593d0ee21263c63748a7f12532a3a6"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
