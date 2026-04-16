class Imcli < Formula
  desc "Intelligent Manager CLI"
  homepage "https://github.com/coder11v/homebrew-tools"
  url "https://github.com/coder11v/homebrew-tools.git", branch: "main"
  version "1.0.1"

  depends_on "figlet"
  depends_on "gum"
  depends_on "jq"
  depends_on "ncdu"

  def install
    libexec.install Dir["scripts/imcli/*"]
    bin.install_symlink libexec/"imcli"
  end

  test do
    system "#{bin}/imcli"
  end
end
