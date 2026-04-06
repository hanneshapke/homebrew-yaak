class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.0.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.5/yaak-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "82e2d413a0ec7bfcfe9ab0a2773e86d1d2d8e23cb1664a4a61216a8bbaf6d282"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.5/yaak-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "04db355bcc6dd6ab9880e1596ba9ee803009e9909f47876cd23b994d8cfce91a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.5/yaak-v0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b292ecf89649650e62d5e9b4179336533114daa0077c9868105f44713ca2d20f"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
