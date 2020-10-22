# This file was generated by GoReleaser. DO NOT EDIT.
class Mongocli < Formula
  desc "The MongoDB Command Line Interface (mongocli) is a tool for managing your MongoDB cloud services, like MongoDB Atlas, MongoDB Cloud Manager, and MongoDB Ops Manager."
  homepage "https://github.com/mongodb/mongocli"
  version "1.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mongodb/mongocli/releases/download/v1.8.0/mongocli_1.8.0_macos_x86_64.zip"
    sha256 "84c330ebd0a30e8b289ff512caf96443ee7f3ac423b933c572c0017fb6938e0d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mongodb/mongocli/releases/download/v1.8.0/mongocli_1.8.0_linux_x86_64.tar.gz"
      sha256 "1974ecb80b1260345049ac0d516d831ce2026f75b13645a6f17e4e552049aa96"
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
