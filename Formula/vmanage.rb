class Vmanage < Formula
  desc "An easy tool manager for coder11v tools"
  homepage "https://github.com/coder11v/homebrew-tools"
  url "https://github.com/coder11v/homebrew-tools.git", branch: "main"
  version "1.1.0"

  depends_on "figlet"
  depends_on "gum"
  depends_on "jq"
  depends_on "ncdu"
  depends_on "easydisk"
  depends_on "dino"
  depends_on "imcli"
  depends_on "easytree"
  depends_on "easybit"

  def install
    bin.install "scripts/vmanage/vmanage"
  end

  test do
    system "#{bin}/vmanage", "--help"
  end
end
