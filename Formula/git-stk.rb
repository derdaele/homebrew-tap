class GitStk < Formula
  desc "Git stacking workflow tool for managing dependent branches"
  homepage "https://github.com/derdaele/git-stk"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/derdaele/git-stk/releases/download/v#{version}/git-stk-v#{version}-aarch64-unknown-macos-gnu.tar.gz"
      sha256 "b3eb9c63510e4f1de4f83214483bc2643ac75cf25a35fcb1a778f0e41b717f99"
    else
      url "https://github.com/derdaele/git-stk/releases/download/v#{version}/git-stk-v#{version}-x86_64-unknown-macos-gnu.tar.gz"
      sha256 "e1754bd794b41884b8e00d55277ebe0d708a69fc501c844fc21eeb7e4e591b7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/derdaele/git-stk/releases/download/v#{version}/git-stk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab12ee60a34350bf0f5508633aaa7b7c36faa598ea330032b7d1de30de5b609e"
    else
      url "https://github.com/derdaele/git-stk/releases/download/v#{version}/git-stk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7017cff23c8dfd680a9549a33754058d9d51600d7d86b6190c87c63e33efdd8a"
    end
  end

  def install
    bin.install "git-stk"
  end

  test do
    system "#{bin}/git-stk", "--version"
  end
end
