class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.0.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.9/yaak-v0.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "e543eb04f5488477d764ae1d57a6486656938a1c59afc5f483b1ef8f1adf175c"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.9/yaak-v0.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "78ab4b06793f299b6c486edd3232cd52474ab91efb158ce34cb42d5e6418a999"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.9/yaak-v0.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3123a37f853702f2ba2b635b5f725275b5b4efee363d0b1fac3e45e67750898e"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
