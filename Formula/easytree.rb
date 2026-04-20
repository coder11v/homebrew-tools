class Easytree < Formula
  desc "Sleek directory tree viewer wrapper"
  homepage "https://github.com/coder11v/homebrew-tools"
  url "https://github.com/coder11v/homebrew-tools.git", branch: "main"
  version "1.1.0"

  depends_on "figlet"
  depends_on "gum"
  depends_on "tree"

  def install
    bin.install "scripts/easytree/easytree"
  end

  test do
    system "#{bin}/easytree", "--version"
  end
end
