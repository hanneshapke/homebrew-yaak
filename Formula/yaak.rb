class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.0.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.11/yaak-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "ee298e7a171d46e26a2369f51e7f535cc0fa1e2197c08b03aac3e89d1c54e25f"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.11/yaak-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "3eb9bde81aaa0931e0a3c519ed486e94a331aa2865f7dba98882617624986ee7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.0.11/yaak-v0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5369c3a9997e3a809916fe69add2cdb353be941bc94b3caff2ec0ae8c9d2a90f"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
