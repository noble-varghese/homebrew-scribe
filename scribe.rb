# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scribe < Formula
  desc "A fast and flexible text expander"
  homepage "https://github.com/noble-varghese/scribe"
  version "0.1.30"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/noble-varghese/scribe/releases/download/v0.1.30/scribe_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
    sha256 "9d375db8865683f5d02d56620e7e8126296ce9c03dd682dbfc5c0d388f71a86b"

    def install
      bin.install "scribe"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/noble-varghese/scribe/releases/download/v0.1.30/scribe_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
    sha256 "e41d85f48eb75873ad770aa530db2ff15121d5e9c0c8772862c0ee872392a9fd"

    def install
      bin.install "scribe"
    end
  end

  test do
    system "#{bin}/scribe", "--version"
  end
end
