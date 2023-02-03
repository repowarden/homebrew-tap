# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warden < Formula
  desc "Audit your git repositories based on policy."
  homepage "https://RepoWarden.com"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/repowarden/cli/releases/download/v0.8.0/warden-v0.8.0-macos-arm64.tar.gz"
      sha256 "68e3823b5fcf804c4c1c1e28760dadd71680badda311a136b613b5b7d3eacf67"

      def install
        bin.install "warden"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/repowarden/cli/releases/download/v0.8.0/warden-v0.8.0-macos-amd64.tar.gz"
      sha256 "c6bf08e0e2d4659be3362189c6f8b86c1263ca5162ef95b1649f8e3173ad242c"

      def install
        bin.install "warden"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/repowarden/cli/releases/download/v0.8.0/warden-v0.8.0-linux-arm64.tar.gz"
      sha256 "eec10c831bf059f9d72de30f8dba3cdc069b1198130fe5dd43669f4588b1c40a"

      def install
        bin.install "warden"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/repowarden/cli/releases/download/v0.8.0/warden-v0.8.0-linux-amd64.tar.gz"
      sha256 "4d9e28914b28ba1d95bff6b7074694dbb8bdcd7a3de74dabda17a823480e7282"

      def install
        bin.install "warden"
      end
    end
  end

  test do
    system "#{bin}/warden", "help"
  end
end
