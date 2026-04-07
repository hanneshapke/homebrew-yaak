class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.0.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.8/yaak-v0.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "fda3918331439cb6004da015288c0dc31b29f73eea4406eea733821eea9bd187"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.8/yaak-v0.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "587db61b13d9900804296331a69b3914ed3a6ae32bab309408d1c9d512ef6342"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.8/yaak-v0.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97476d79b925fe6377f9bb4827e04b01481daa8671af935117a68ff3c919bcdf"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
