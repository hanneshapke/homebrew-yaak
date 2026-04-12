class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "1957151e899651cb927e5e79851f8fd58a8b3ca46c0db81fd3e6e814ccd40aa8"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "1e05c42d7d6e9fa19c64ec610113ae4ccb2172f02303288f36a82e999c4e9fc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3481ce20715fb1dab469d4d1ea81b67971561769089f3f05acc214fb4bbe652"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8d1b1b316f52076916294386d0a18983224a05437c155cbcd3e04ea0152a24b"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
