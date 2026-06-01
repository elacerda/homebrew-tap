class Astrofetch < Formula
  desc "Terminal fetch app with procedural astrophysical ASCII art"
  homepage "https://github.com/elacerda/astrofetch"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/elacerda/astrofetch/releases/download/v0.2.8/astrofetch-v0.2.8-aarch64-apple-darwin.tar.gz"
      sha256 "7bf245b9971b4e3b85d7a7dd53975a33559c2cfde7ce5b9bbffcddc341d7839d"
    else
      url "https://github.com/elacerda/astrofetch/releases/download/v0.2.8/astrofetch-v0.2.8-x86_64-apple-darwin.tar.gz"
      sha256 "15bcdbc3cde33be12ba7b555cc1fbdadd356348fa6aa3e3604d0da41ac50f473"
    end
  end

  def install
    bin.install "astrofetch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astrofetch --version")
  end
end
