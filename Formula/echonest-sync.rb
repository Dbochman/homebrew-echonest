class EchonestSync < Formula
  include Language::Python::Virtualenv

  desc "Desktop agent that syncs local Spotify with an EchoNest server"
  homepage "https://github.com/Dbochman/EchoNest"
  url "https://github.com/Dbochman/EchoNest/archive/refs/tags/sync-v0.5.2.tar.gz"
  sha256 "f322914353d68535239465fc139742c789096b8ce40816af3dd916e4ce2231c6"
  license "MIT"

  depends_on "python@3.12"
  depends_on :macos

  # Pure-python deps (sdist or py3-none-any wheels — Homebrew handles these)
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e0/2d/a891ca51311197f6ad14a7ef42e2399f36cf2f9bd44752b3dc4eab60fdc5/certifi-2026.1.4.tar.gz"
    sha256 "ac726dd470482006e014ad384921ed6438c457018f4b3d204aea4281258b2120"
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

  resource "pystray" do
    url "https://files.pythonhosted.org/packages/5c/64/927a4b9024196a4799eba0180e0ca31568426f258a4a5c90f87a97f51d28/pystray-0.19.5-py2.py3-none-any.whl"
    sha256 "a0c2229d02cf87207297c22d86ffc57c86c227517b038c0d3c59df79295ac617"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "rumps" do
    url "https://files.pythonhosted.org/packages/b2/e2/2e6a47951290bd1a2831dcc50aec4b25d104c0cf00e8b7868cbd29cf3bfe/rumps-0.4.0.tar.gz"
    sha256 "17fb33c21b54b1e25db0d71d1d793dc19dc3c0b7d8c79dc6d833d0cffc8b1596"
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

  # Native deps with pre-built wheels (installed directly, bypassing --no-binary)
  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/f3/85/1637cd4af66fa687396e757dec650f28025f2a2f5a5531a3208dc0ec43f2/charset_normalizer-3.4.4-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "0a98e6759f854bd25a58a73fa88833fba3b7c491169f86ce1180c948ab3fd394"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/d6/71/5026395b290ff404b836e636f51d7297e6c83beceaa87c592718747e670f/pillow-12.1.1-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "adebb5bee0f0af4909c30db0d890c773d1a92ffe83da908e2e9e720f8edf3984"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/64/5a/6b15e499de73050f4a2c88fff664ae154307d25dc04da8fb38998a428358/pyobjc_core-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "818bcc6723561f207e5b5453efe9703f34bc8781d11ce9b8be286bb415eb4962"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/95/bf/ee4f27ec3920d5c6fc63c63e797c5b2cc4e20fe439217085d01ea5b63856/pyobjc_framework_cocoa-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "547c182837214b7ec4796dac5aee3aa25abc665757b75d7f44f83c994bcb0858"
  end

  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/e9/9b/780f057e5962f690f23fdff1083a4cfda5a96d5b4d3bb49505cac4f624f2/pyobjc_framework_quartz-12.1-cp312-cp312-macosx_10_13_universal2.whl"
    sha256 "7730cdce46c7e985535b5a42c31381af4aa6556e5642dc55b5e6597595e57a16"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/89/a0/6cf41a19a1f2f3feab0e9c0b74134aa2ce6849093d5517a0c550fe37a648/pyyaml-6.0.3-cp312-cp312-macosx_11_0_arm64.whl"
    sha256 "fc09d0aa354569bc501d4e787133afc08552722d3ab34836a80547331bb5d4a0"
  end

  # Names of resources that are pre-built wheels with native code
  NATIVE_WHEELS = %w[charset-normalizer pillow pyobjc-core pyobjc-framework-Cocoa
                     pyobjc-framework-Quartz PyYAML].freeze

  def install
    python3 = "python3.12"
    venv = virtualenv_create(libexec, python3)

    # Install pure-python resources the standard way
    pure_resources = resources.reject { |r| NATIVE_WHEELS.include?(r.name) }
    venv.pip_install pure_resources

    # Install native wheels directly (bypass --no-binary=:all:)
    native_resources = resources.select { |r| NATIVE_WHEELS.include?(r.name) }
    native_resources.each do |r|
      r.stage do
        whl = Dir["*.whl"].first
        system python3, "-m", "pip", "--python=#{libexec}/bin/python",
               "install", "--verbose", "--no-deps", "--ignore-installed",
               "--no-compile", Pathname.pwd/whl
      end
    end

    venv.pip_install_and_link buildpath/"echonest-sync"
  end

  test do
    assert_match "Sync your local Spotify", shell_output("#{bin}/echonest-sync --help")
  end
end
