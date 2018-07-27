class GithubPackageManager < Formula
  desc "A package manager built on GitHub"
  homepage "https://gpm.carterbrainerd.me"
  url "https://github.com/cbrnrd/gpm/archive/0.1.0.tar.gz"
  sha256 "632d6b817f8202d4588ca6ee1011090bc8391a08a36417b8a73a8b0807da793e"
  head "https://github.com/cbrnrd/gpm.git"

  bottle :unneeded

  depends_on "crystal"

  def install
    system "make install"
  end
  
  test do
    assert_equal "gpm v0.1.0", shell_output("#{bin}/gpm --version")
  end
end
