class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "fccd06f7c05f7f654896f768402e8e9f2f1fef02ab4c899cacee52794c315984"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "4563f209d00ffd11e73b215ca3f872a416db6169d41dda7357ef58c7d37cb7ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccad3a7c4293819459c95c7299f85d27973078300fba0a148bcf19a11fb217c8"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d8208f160f015de3c90c3dbea3b9a7d1f38c13f56eeff27df0ae0a2e2634e3f"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
