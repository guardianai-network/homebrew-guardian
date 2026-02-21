class Guardian < Formula
  desc "Guardian Smart Multi-Cloud CLI — deploy everywhere, sleep soundly"
  homepage "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.4/guardian-macos-apple-silicon"
      sha256 "cd66ccbaf462007ff85dae10ceed6de83ce151592630547947d5aa6905bc409d"

      def install
        bin.install "guardian-macos-apple-silicon" => "guardian"
      end
    else
      url "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.4/guardian-macos-intel"
      sha256 "6a23449c0954cebc2eb69d392eb1c8fa6996715f13bb514a4544510aba4ec389"

      def install
        bin.install "guardian-macos-intel" => "guardian"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/guardian-ai-smart-multi-cloud-infra-releases/releases/download/v0.3.4/guardian-linux-x86_64"
    sha256 "b3a61e7e4957657badf512ca666ac951c2bae9a42ad505427e371a1feac97b6b"

    def install
      bin.install "guardian-linux-x86_64" => "guardian"
    end
  end

  test do
    assert_match "Guardian Smart Multi-Cloud", shell_output("#{bin}/guardian --help")
  end
end
