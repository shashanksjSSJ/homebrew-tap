# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.3.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/layer5io/meshery/releases/download/v0.3.7/mesheryctl_0.3.7_Darwin_x86_64.zip"
    sha256 "31f7ef235162b2ff799cf25e83dc2af8046f3d11e254ddb13a06555b8128c931"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/layer5io/meshery/releases/download/v0.3.7/mesheryctl_0.3.7_Linux_x86_64.zip"
      sha256 "bc00308a8825d8a1457f9f62b8527cfc1fc8e9a847dfae6f5b60d0f9a5f9a77b"
    end
  end

  def install
    bin.install "mesheryctl"
  end
end
