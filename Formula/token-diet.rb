class TokenDiet < Formula
  include Language::Python::Virtualenv

  desc "Audit token footprint and detect silent context leaks in AI agent workflows"
  homepage "https://github.com/joseoper/token-diet"
  url "https://github.com/joseoper/token-diet/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "a8fd67e0498b762758d9ba5bc7063f68f11e58a0026b75624f30eb1e5baa27d9"


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
