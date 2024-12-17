# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scribe < Formula
  desc "A fast and flexible text expander"
  homepage "https://github.com/noble-varghese/scribe"
  version "0.1.21"
  license "MIT"
  depends_on :linux

  if Hardware::CPU.intel?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/noble-varghese/scribe/releases/download/v0.1.21/scribe_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "a9fe9ab98fea804ad6103f955bb27909b6f61b83046f8d4ee3e9897c15c08558"

      def install
        bin.install "scribe"
      end
    end
  end

  test do
    system "#{bin}/scribe", "--version"
  end
end
