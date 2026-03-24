class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.7/guardian-macos-apple-silicon"
      sha256 "2508ac555d1fba110c7dbd66738972a61569b142d0ee57ecaae266d7c2a14240"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.7/guardian-macos-intel"
      sha256 "eaba0cb4f7b81d5c41ddb670df14f46d682488f13f54fd6e39df46ca63d8bd39"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.7/guardian-linux-x86_64"
    sha256 "d3a42a3ada6b5317765372ed66e32b508c614fe2b0bfd7ee9bfb151aa64b397a"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
