class Yaak < Formula
  desc "Translate natural language to bash commands using an OpenAI-compatible LLM"
  homepage "https://www.hanneshapke.com/yaak/"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "741a978fa9a9e91bfab73a181d38158599a620a901e1a2549223461e85f20abc"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "66b5aea816c11226a0da66bc5f433f3138bd94f3ef54d416ef7e6deb290a3161"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9c3dc84b446baf1cf01556c4dae260b1fcf8427f9ecfd535d1ec60357ad0784"
    else
      url "https://github.com/hanneshapke/yaak/releases/download/v0.1.4/yaak-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "185cb818610df2bb29effb660022502a54098d3f386aaf04f82c8384bd2e7eb1"
    end
  end

  def install
    bin.install "yaak"
  end

  test do
    assert_match "yaak", shell_output("#{bin}/yaak --version")
  end
end
