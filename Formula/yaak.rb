class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.0.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.6/yaak-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "31a4b0a7ed86f3ad8eccc4915e6f73c7bd9bc45146227ebae207a17587c477e5"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.6/yaak-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "75d7a6c1850f96ca8019ea86f02779a2f3f4d35d6ea47b914d202f8553356b0e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.6/yaak-v0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d764d888381dc3c3737a9625aea50da836e299014976d46fdc8672aecca207b6"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
