class Ner < Formula
  desc "Named entity recognition on text"
  homepage "https://github.com/Flight-School/ner"
  url "https://github.com/Flight-School/ner.git", :branch => "master"
  head "https://github.com/Flight-School/ner.git", :shallow => false
  version "0.0.1"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/ner"
  end
end
