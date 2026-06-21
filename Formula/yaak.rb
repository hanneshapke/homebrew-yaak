class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.5/yaak-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "a1701758ce73115c151698efbb066e554fed48db818fcc8cf15f5236814024b4"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.5/yaak-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "fc5c74b28004e6b2dda76bbfbfb84d18ae33f5f799c2be6d4d5d85481bde2cd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.5/yaak-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0493ca4f9ed7bafc50656d3f7a17f470f56d074f3d2936392562734ca6ab85a0"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.5/yaak-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3bd2ddaa6c2c8240446553eea44671d540440e3d33031165eb2c70c397c452ab"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
