# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.5.49"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.49/mesheryctl_0.5.49_Darwin_x86_64.zip"
      sha256 "f4d89a33f8cedba999010b4314c64a54ce1ff76ef44464756fc68be3cf0fa188"
    end
    if Hardware::CPU.arm?
      url "https://github.com/meshery/meshery/releases/download/v0.5.49/mesheryctl_0.5.49_Darwin_arm64.zip"
      sha256 "3b197a77728b7252346b15cfc7f55d1ab474f77a31e69ced17a3102b1fc04223"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.49/mesheryctl_0.5.49_Linux_x86_64.zip"
      sha256 "dc5a2ad940502d61d7e450d5e363f0d50329b21eefca2dac5b43227aab04cbbf"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.49/mesheryctl_0.5.49_Linux_armv6.zip"
      sha256 "507e777f87d800ed497b4af45fe157139c2d5c916b9f3950d90df7f58905ec2e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.49/mesheryctl_0.5.49_Linux_arm64.zip"
      sha256 "01f75be6f13b7c28e6978de6f5d1f0607117bdb53595eaae370f0816d5e87c95"
    end
  end

  def install
    bin.install "mesheryctl"
  end
end
