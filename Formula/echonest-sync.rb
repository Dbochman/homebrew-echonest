class EchonestSync < Formula
  include Language::Python::Virtualenv

  desc "CLI agent that syncs local Spotify playback with an EchoNest server"
  homepage "https://github.com/Dbochman/EchoNest"
  url "https://github.com/Dbochman/EchoNest/archive/refs/tags/sync-v0.6.1.tar.gz"
  sha256 "8b205ac6b0d6fc8aa96b3a1abf200e3de170e76182612ed52e8398a8722a9292"
  license "MIT"

  depends_on "python@3.12"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e0/2d/a891ca51311197f6ad14a7ef42e2399f36cf2f9bd44752b3dc4eab60fdc5/certifi-2026.1.4.tar.gz"
    sha256 "ac726dd470482006e014ad384921ed6438c457018f4b3d204aea4281258b2120"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "jaraco.classes" do
    url "https://files.pythonhosted.org/packages/06/c0/ed4a27bc5571b99e3cff68f8a9fa5b56ff7df1c2251cc715a652ddd26402/jaraco.classes-3.4.0.tar.gz"
    sha256 "47a024b51d0239c0dd8c8540c6c7f484be3b8fcf0b2d85c13825780d3b3f3acd"
  end

  resource "jaraco.context" do
    url "https://files.pythonhosted.org/packages/cb/9c/a788f5bb29c61e456b8ee52ce76dbdd32fd72cd73dd67bc95f42c7a8d13c/jaraco_context-6.1.0.tar.gz"
    sha256 "129a341b0a85a7db7879e22acd66902fda67882db771754574338898b2d5d86f"
  end

  resource "jaraco.functools" do
    url "https://files.pythonhosted.org/packages/0f/27/056e0638a86749374d6f57d0b0db39f29509cce9313cf91bdc0ac4d91084/jaraco_functools-4.4.0.tar.gz"
    sha256 "da21933b0417b89515562656547a77b4931f98176eb173644c0d35032a33d6bb"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/43/4b/674af6ef2f97d56f0ab5153bf0bfa28ccb6c3ed4d1babf4305449668807b/keyring-25.7.0.tar.gz"
    sha256 "fe01bd85eb3f8fb3dd0405defdeac9a5b4f6f0439edbb3149577f244a2e8245b"
  end

  resource "more-itertools" do
    url "https://files.pythonhosted.org/packages/ea/5d/38b681d3fce7a266dd9ab73c66959406d565b3e85f21d5e66e1181d93721/more_itertools-10.8.0.tar.gz"
    sha256 "f638ddf8a1a0d134181275fb5d58b086ead7c6a72429ad725c67503f13ba30bd"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sseclient-py" do
    url "https://files.pythonhosted.org/packages/4d/2e/59920f7d66b7f9932a3d83dd0ec53fab001be1e058bf582606fe414a5198/sseclient_py-1.9.0-py3-none-any.whl"
    sha256 "340062b1587fc2880892811e2ab5b176d98ef3eee98b3672ff3a3ba1e8ed0f6f"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install resources
    venv.pip_install_and_link buildpath/"echonest-sync"
  end

  test do
    assert_match "Sync your local Spotify", shell_output("#{bin}/echonest-sync --help")
  end
end
