class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.8/guardian-macos-apple-silicon"
      sha256 "a05bcae7d5f6979109d280e680bca46b4135008ad18a93e0e3ced854a5914484"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.8/guardian-macos-intel"
      sha256 "a4e00c6996addfb09da315f67dac739d0dc68db6f9aae62430a6a65f0c4a628b"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/LuckyOkoedion/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.8/guardian-linux-x86_64"
    sha256 "ab99a9413383cc666b1c351ce2275892faa04e71ed15d3497fb78f9dd696c27d"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
