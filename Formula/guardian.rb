class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.10/guardian-macos-apple-silicon"
      sha256 "95e2b24a94788eda649033d42152a4d60f048e77b81dfa5de124ef35653c9f26"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.10/guardian-macos-intel"
      sha256 "c2507b88db304f6ce55bded5a49c58c7cb4354c17a4d2bf4ab6db03705880e62"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.10/guardian-linux-x86_64"
    sha256 "6da38349d1538c762fe8c22d44789997804ddf6a597888f8791b3459dd182534"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
