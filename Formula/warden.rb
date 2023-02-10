# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warden < Formula
  desc "Audit your git repositories based on policy."
  homepage "https://RepoWarden.com"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/repowarden/cli/releases/download/v0.11.1/warden-v0.11.1-macos-arm64.tar.gz"
      sha256 "1064b543d158dde81ff2b5cab47a55c93caf9099465c912f613550394c501c58"

      def install
        bin.install "warden"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/repowarden/cli/releases/download/v0.11.1/warden-v0.11.1-macos-amd64.tar.gz"
      sha256 "940c0845f5d02ced803d83fedb1ddb5a17133fcb0f903bea75eafcb5c2473c69"

      def install
        bin.install "warden"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/repowarden/cli/releases/download/v0.11.1/warden-v0.11.1-linux-arm64.tar.gz"
      sha256 "720a9b57a52f349e5056a24230807ff28a1b920346a6b580a437f4f70df09b22"

      def install
        bin.install "warden"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/repowarden/cli/releases/download/v0.11.1/warden-v0.11.1-linux-amd64.tar.gz"
      sha256 "2660cc2d553aa87da6e8ff1cfe5ec08514f3935d9625efa1c1981383d60c4d75"

      def install
        bin.install "warden"
      end
    end
  end

  test do
    system "#{bin}/warden", "help"
  end
end
