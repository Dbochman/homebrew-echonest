class EchonestSync < Formula
  include Language::Python::Virtualenv

  desc "Desktop agent that syncs local Spotify with an EchoNest server"
  homepage "https://github.com/Dbochman/EchoNest"
  url "https://github.com/Dbochman/EchoNest/archive/refs/tags/sync-v0.5.2.tar.gz"
  sha256 "f322914353d68535239465fc139742c789096b8ce40816af3dd916e4ce2231c6"
  license "MIT"

  depends_on "python@3.12"
  depends_on :macos

  def install
    venv = virtualenv_create(libexec, "python3.12")
    # Install the package with all deps using wheels where available
    pkg = buildpath/"echonest-sync"
    system libexec/"bin/pip", "install", "--prefer-binary", "#{pkg}[mac]"
    # Link entry points into Homebrew bin
    bin.install_symlink Dir[libexec/"bin/echonest-sync*"]
  end

  test do
    assert_match "Sync your local Spotify", shell_output("#{bin}/echonest-sync --help")
  end
end
