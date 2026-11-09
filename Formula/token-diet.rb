class TokenDiet < Formula
  include Language::Python::Virtualenv

  desc "Audit token footprint and detect silent context leaks in AI agent workflows"
  homepage "https://github.com/joseoper/token-diet"
  url "https://github.com/joseoper/token-diet/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "ffea1a83ec99dad45fa0b63301e8c0feade5cc0608778cb10a22ed19154c277f"

  license "MIT"
  head "https://github.com/joseoper/token-diet.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "TOKEN DIET", shell_output("#{bin}/token-diet --help")
  end
end
