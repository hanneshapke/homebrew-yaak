class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "d07d7a0a73649296d3ceb25203261926276a70984555a12932cbfd2e5e18c1b4"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "10be2ba6b43458ebcd6277aafae2dd18b5a7f059daf77cd3465f4042138fe2c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2eb278dd440623b16a0759b234786d53cf64b491984ff299ae6cfaa60b402741"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "180ade5cd7931d7757981fb8e5def8db660aae1b7b5a6b830f9a01cb03f3f4f8"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
