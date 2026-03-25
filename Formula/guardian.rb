class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.14/guardian-macos-apple-silicon"
      sha256 "83f97d6a1aafb13b5270557db14f68576e25d2f65d6f83ab4b17a8f819d3fe34"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.14/guardian-macos-intel"
      sha256 "47c1f4df661d9f9bb08cd4847a2edb97bc73f3f30c646b56ad4d9a04260cd4f0"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.14/guardian-linux-x86_64"
    sha256 "08b3084e8d5c6ebbee4746136474f7262c3711c416c4ddca16f6fca8133df438"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
