class Dino < Formula
  desc "Terminal-based dino run"
  homepage "https://github.com/coder11v/homebrew-tools"
  url "https://github.com/coder11v/homebrew-tools.git", branch: "main"
  version "1.0.1"

  depends_on "figlet"
  depends_on "gum"

  def install
    libexec.install Dir["scripts/dino/*"]
    bin.install_symlink libexec/"dino.zsh" => "dino"
  end
end
