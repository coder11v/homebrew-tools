class Easybit < Formula
  desc "Sleek download manager wrapper for aria2c"
  homepage "https://github.com/coder11v/homebrew-tools"
  url "https://github.com/coder11v/homebrew-tools.git", branch: "main"
  version "1.1.0"

  depends_on "figlet"
  depends_on "gum"
  depends_on "aria2"

  def install
    bin.install "scripts/easybit/easybit"
  end

  test do
    system "#{bin}/easybit"
  end
end
