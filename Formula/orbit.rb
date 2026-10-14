class Orbit < Formula
  desc "Aesthetic Rust TUI system dashboard and workspace"
  homepage "https://orbit-tui.vercel.app"
  version "0.11.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziuus/orbit-tui/releases/download/v0.11.16/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "31b38943267c2190c04111ee9e8deb40d24b8b7efa90e3f8b561a70460b4cb69"
    else
      url "https://github.com/ziuus/orbit-tui/releases/download/v0.11.16/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "3478499c1c5bec42078f28a397ecd9e2e10964332f7e372f80c2b5d6d9a1c9ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ziuus/orbit-tui/releases/download/v0.11.16/orbit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfd5d60c93f689266173a65925dbe3ee2a4cc29f2ef4a1d320ba8801316049b0"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    assert_match "orbit", shell_output("#{bin}/orbit --help", 0)
  end
end
