class TokenDiet < Formula
  include Language::Python::Virtualenv

  desc "Audit token footprint and detect silent context leaks in AI agent workflows"
  homepage "https://github.com/josephrotts/token-diet"
  url "https://github.com/josephrotts/token-diet/archive/refs/tags/v0.1.0.tar.gz"
  license "MIT"
  head "https://github.com/josephrotts/token-diet.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "TOKEN DIET", shell_output("#{bin}/token-diet --help")
  end
end
