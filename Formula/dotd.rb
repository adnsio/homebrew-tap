# This file was generated by GoReleaser. DO NOT EDIT.
class Dotd < Formula
  desc "DotD is a Simple and flexible DNS over HTTPS proxy with custom resolver and other perks."
  homepage "https://github.com/adnsio/dotd"
  version "0.1.0-beta"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/adnsio/dotd/releases/download/v0.1.0-beta/dotd_0.1.0-beta_darwin_amd64.tar.gz"
    sha256 "6dad125e84ce08552cad2348070b2e4fed41885d32c8c2e971bed40d77ad15ee"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/adnsio/dotd/releases/download/v0.1.0-beta/dotd_0.1.0-beta_linux_amd64.tar.gz"
      sha256 "5779502b727ac7bf34d650aebac3fe4caf733002ca3d28fcd31a18dd8beea88f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adnsio/dotd/releases/download/v0.1.0-beta/dotd_0.1.0-beta_linux_arm64.tar.gz"
        sha256 "f258046de34536cd91a1865cfb662618bf65c05f5e2b7dcf8533bc65bb3f7be0"
      else
        url "https://github.com/adnsio/dotd/releases/download/v0.1.0-beta/dotd_0.1.0-beta_linux_armv6.tar.gz"
        sha256 "3b0d7f12a2c0e61ba1a958e2aae075987d8d49c8fc577649e6c13a85597f7792"
      end
    end
  end

  def install
    bin.install "dotd"
  end

  test do
    system "#{bin}/dotd -v"
  end
end
