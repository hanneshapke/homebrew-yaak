class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "551c466bd4feb798c05d504d813775a7aa123b5ac4eb61b7a097de3df0983c27"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "c363ef0459b85dca5c727dab100438897df47b54e659f1396bc6be7555e086dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48066a9710d9ed121fc0a6977a12695c889087a5086822af32b03c1a19976a80"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37a12846b043654278d9b076ac9d8664bb9e72c70c0a6ee54b18508d6a58f3ae"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
