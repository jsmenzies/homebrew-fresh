# typed: false
# frozen_string_literal: true

class Fresh < Formula
  desc "A command-line tool for managing your local development environment"
  homepage "https://github.com/jsmenzies/fresh"
  version "1.2.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.2.3/fresh_1.2.3_darwin_amd64.tar.gz"
      sha256 "814a834da090cd88a089e6e1a2949c433d14452e1879a6b24ded765c765014f7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.2.3/fresh_1.2.3_darwin_arm64.tar.gz"
      sha256 "0dbb69ccee279561b2fda6768c00d394f107d8daad30af09fbe657d79a9dcfeb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.2.3/fresh_1.2.3_linux_amd64.tar.gz"
      sha256 "e07ed14a3ce845c38476f33c17deaee34755653389fad92906efc4974bfca811"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.2.3/fresh_1.2.3_linux_arm64.tar.gz"
      sha256 "675f4d0e8281b6d91fb67b3bcde103ecb39a704dcc583c786a0812d2520de90d"
    end
  end

  def install
    bin.install "fresh"
  end

  test do
    system "#{bin}/fresh", "--version"
  end
end