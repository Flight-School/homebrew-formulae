class Pos < Formula
  desc "Part of speech tagging for words in text"
  homepage "https://github.com/Flight-School/pos"
  url "https://github.com/Flight-School/pos.git", :branch => "master"
  head "https://github.com/Flight-School/pos.git", :shallow => false
  version "0.0.1"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/pos"
  end
end
