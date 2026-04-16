class Easydisk < Formula
  desc "A sleek disk management utility"
  homepage "https://github.com/coder11v/homebrew-tools"
  url "https://github.com/coder11v/homebrew-tools.git", branch: "main"
  version "1.0.1"

  depends_on "figlet"
  depends_on "gum"
  depends_on "zig" => :build
  depends_on "ncurses"
  depends_on "zstd"

  def install
    Dir.chdir("scripts/easydisk") do
      system "zig", "build", "-Doptimize=ReleaseFast", "--prefix", prefix
      # The binary is named 'ncdu' in build.zig, so we rename it to 'easydisk'
      mv bin/"ncdu", bin/"easydisk"
      man1.install "ncdu.1" => "easydisk.1"
    end
  end

  test do
    system "#{bin}/easydisk", "-v"
  end
end
