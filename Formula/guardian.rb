class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.17/guardian-macos-apple-silicon"
      sha256 "2d4b1ac01dfd7ea167f8a0a6c0c241f671a957a4b3cf6fb09324ec12d6cb186e"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.17/guardian-macos-intel"
      sha256 "f8f206fd57d47d0c5d904d94ac03a39d899fc36f0fb4c00d8b45cc5bd963c7bc"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.17/guardian-linux-x86_64"
    sha256 "ecfd0a9191ac1f8ed3d6179ba31edae7fa434bd9e39c0f72288ca7b8e0fef572"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
