# typed: false
# frozen_string_literal: true

class Fresh < Formula
  desc "A command-line tool for managing your local development environment"
  homepage "https://github.com/jsmenzies/fresh"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.1.1/fresh_1.1.1_darwin_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.1.1/fresh_1.1.1_darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.1.1/fresh_1.1.1_linux_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jsmenzies/fresh/releases/download/v1.1.1/fresh_1.1.1_linux_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "fresh"
  end

  test do
    system "#{bin}/fresh", "--version"
  end
end
