class Wutong < Formula
  desc "Your application description"
  homepage "https://github.com/gavzheng/wutong"
  url "https://api.github.com/repos/GavZheng/wutong/tarball/v0.2.0"
  sha256 "295454f2a9cdbe5f63c781808034238b81df3644af72bc9d02480849a075cf90"
  license "MIT"
bottle do
  root_url "https://github.com/GavZheng/homebrew-wutong/releases/download/v0.2.0"
  sha256 arm64_sequoia: "72a41c3b4eea464f5b4b807b8b2563b96004c8758f4f00fb3a2a2903dedfcea0"
  sha256 arm64_sonoma: "42353ac97228af95fe925d297c9458023f3422e7feab7fd2bef0cce1b91e1b57"
  sha256 arm64_ventura: "403214d5dafbf12cb25ff9c959b1d17578afcc0ae5e8c42996f635363ba6f448"
  sha256 x86_64_sequoia: "c86837b0a18f1a07dcb16c23bccd81aea25f0925e838252371f62243a56f0ae7"
  sha256 x86_64_sonoma: "c86837b0a18f1a07dcb16c23bccd81aea25f0925e838252371f62243a56f0ae7"
  sha256 x86_64_ventura: "5f9a742ab9795639963e565f708a95f4aa6351e02517eb578615d3c2e314ecc9"
end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/wutong", "--version"
  end
end
