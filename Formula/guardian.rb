class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.16/guardian-macos-apple-silicon"
      sha256 "eb95d5905f9dc0919196b6c1580e0b9f4142bc8d15a0c8e069e2cbd8f0d2a0bd"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.16/guardian-macos-intel"
      sha256 "96841ede25bcc13a74cf29b98274d5c09fc81c91937de8df1e98a8bb24690c1b"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.16/guardian-linux-x86_64"
    sha256 "77ce00c6afc8f97d5f9871e58de1c6a19c138d487b0245c8be51bbbdd2d69a1a"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
