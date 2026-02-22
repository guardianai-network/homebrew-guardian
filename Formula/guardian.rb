class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.5/guardian-macos-apple-silicon"
      sha256 "9859675047eae4ae6306ae4ac16a95135906b9443ccc9a2280065aecc5a40ee7"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.5/guardian-macos-intel"
      sha256 "9859675047eae4ae6306ae4ac16a95135906b9443ccc9a2280065aecc5a40ee7"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.5/guardian-linux-x86_64"
    sha256 "b3a61e7e4957657badf512ca666ac951c2bae9a42ad505427e371a1feac97b6b"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
