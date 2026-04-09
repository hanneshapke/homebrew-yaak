class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.3/yaak-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "c97cb800054232008a8a58f2e6c104203fd044b17e6c8237884a60a6f4c1b453"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.3/yaak-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "0cb12664f9002b60d69fc8fba0db3e2ca2cf5321ac4005fc26977d8edf0a3a41"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.3/yaak-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "818f5a16a1cf7f6acaf8f6531365fdd6f28c674bcd2b1667cdd194a3634c9aea"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
