class Wutong < Formula
  desc "Your application description"
  homepage "https://github.com/gavzheng/wutong"
  url "https://api.github.com/repos/GavZheng/wutong/tarball/v0.2.0"
  sha256 "295454f2a9cdbe5f63c781808034238b81df3644af72bc9d02480849a075cf90"
  license "MIT"
bottle do
  root_url "https://github.com/GavZheng/homebrew-wutong/releases/download/v0.2.1"
  sha256 arm64_sequoia: "8b92ccc208421bc82b71da20cf01cb3b829caea685d65f0e293d3a1e86adf35b"
  sha256 arm64_sonoma: "380623899b40fec39d4c1f135daea566a4c12e03e3b23ee696f1336265127bc4"
  sha256 arm64_ventura: "0e721baf78edc07c48bc2e02a33364443851c85404d21dc4509576f1219e0e21"
  sha256 x86_64_sequoia: "e2d85f8f5ed35fc4379e6009a4bf9363c128e6c7dd4370ae82f76df278906677"
  sha256 x86_64_sonoma: "5dc826334d8615c7a58dd7981bc1c1efb6c02ca58b5876bcad17729c9bbdbafe"
  sha256 x86_64_ventura: "5f49c1c05ed4624a00bcee47ca4ab33eb7eff6a7134593e245f273967a6663c4"
end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/wutong", "--version"
  end
end
