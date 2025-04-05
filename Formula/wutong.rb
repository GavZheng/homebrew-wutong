class Wutong < Formula
  desc "Your application description"
  homepage "https://github.com/gavzheng/wutong"
  url "https://api.github.com/repos/GavZheng/wutong/tarball/v0.2.0"
  sha256 "295454f2a9cdbe5f63c781808034238b81df3644af72bc9d02480849a075cf90"
  license "MIT"
bottle do
  root_url "https://github.com/GavZheng/homebrew-wutong/releases/download/v0.2.0"
  sha256 arm64_sequoia: "3e9004d728a8b035c5f1554f7c4e9f851a0199a1ea45bcc6ab1a563cdd8fab65"
  sha256 arm64_sonoma: "3e9004d728a8b035c5f1554f7c4e9f851a0199a1ea45bcc6ab1a563cdd8fab65"
  sha256 arm64_ventura: "601221e81ddada5ac5fb5008cb3da7ec51dd7b2fe06b8626083728283a29f904"
  sha256 x86_64_sequoia: "4d9e3071259862aed358d0050fa93f78031f1fc18a6623836cdc06ba622519f9"
  sha256 x86_64_sonoma: "4d9e3071259862aed358d0050fa93f78031f1fc18a6623836cdc06ba622519f9"
  sha256 x86_64_ventura: "d2d34d6c2e33bb14017593bc7f8f3656706ae5f133c1b848e43a82f797a15e15"
end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/wutong", "--version"
  end
end
