class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.18/guardian-macos-apple-silicon"
      sha256 "1951f033eb574754eeca5828637ef8e2cc87775605acd1fd1e28b61e4d6eecb8"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.18/guardian-macos-intel"
      sha256 "7dd00da2fbdbeaf757cf7efe866a129ad44d5973cdfd9a4fd34be31a7e9a797e"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.18/guardian-linux-x86_64"
    sha256 "27bef71c1dfd7e216edf475e0f1f21cceb8ee0d100e90d289ab282f11ae4bf0a"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
