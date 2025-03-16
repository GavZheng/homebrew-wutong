class Wutong < Formula
    desc "Wutong - A Swiss Army Knife of Developers.🌳"
    homepage "https://github.com/GavZheng/wutong"
    url "https://github.com/GavZheng/wutong/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "be6179eda464a744db9630cb052bdb28e63547a2ecc0c975a262171257c5f8c7"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/wutong"
    end
  
    test do
      system "#{bin}/wutong", "--version"
    end
  end