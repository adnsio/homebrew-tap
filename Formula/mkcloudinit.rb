# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mkcloudinit < Formula
  desc "Build an iso9660 cloud-init image in seconds"
  homepage "https://github.com/adnsio/mkcloudinit"
  version "0.1.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/adnsio/mkcloudinit/releases/download/v0.1.0/mkcloudinit_0.1.0_darwin_amd64.tar.gz"
      sha256 "0f271425f810848e94b37cd90ffbc1228de1617be5aac0a6f71409152854feaf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/adnsio/mkcloudinit/releases/download/v0.1.0/mkcloudinit_0.1.0_darwin_arm64.tar.gz"
      sha256 "ef155f979ea77cd8925a5e422f4610cc0131595d4d6871d80d3cf8db2470b9eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/adnsio/mkcloudinit/releases/download/v0.1.0/mkcloudinit_0.1.0_linux_amd64.tar.gz"
      sha256 "72dc07f90eb775f18cd0536e3fbe1b571f66a7336617abfdb405bd6f3caf3c0f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adnsio/mkcloudinit/releases/download/v0.1.0/mkcloudinit_0.1.0_linux_arm64.tar.gz"
      sha256 "7c94db066d7b30e615dd3750645650655652e5c5eda3623af89bc1cea83192a9"
    end
  end

  def install
    bin.install "mkcloudinit"
  end

  test do
    system "#{bin}/mkcloudinit -h"
  end
end
