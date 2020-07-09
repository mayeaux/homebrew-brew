# This file was generated by GoReleaser. DO NOT EDIT.
class Mongocli < Formula
  desc "The MongoDB Command Line Interface (mongocli) is a tool for managing your MongoDB cloud services, like MongoDB Atlas, MongoDB Cloud Manager, and MongoDB Ops Manager."
  homepage "https://github.com/mongodb/mongocli"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mongodb/mongocli/releases/download/v1.1.0/mongocli_1.1.0_macos_x86_64.zip"
    sha256 "7e75a01fdea6f594b0ce069efdeaeaa3b45096cd65d642815b17c72e1b5730e1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mongodb/mongocli/releases/download/v1.1.0/mongocli_1.1.0_linux_x86_64.tar.gz"
      sha256 "d1280e618faf27a127b1662745078fa11e7cb6a220317dd96c89511c01bc4b49"
    end
  end

  def install
    bin.install "mongocli"
    (bash_completion/"mongocli.sh").write `#{bin}/mongocli completion bash`
    (zsh_completion/"_mongocli").write `#{bin}/mongocli completion zsh`
    (fish_completion/"mongocli.fish").write `#{bin}/mongocli completion fish`
  end

  test do
    system "#{bin}/mongocli --version"
  end
end
