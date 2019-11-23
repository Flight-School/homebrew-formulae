class Pos < Formula
  desc "Tags part of speech on words in natural language text."
  homepage "https://github.com/Flight-School/pos"
  url "https://github.com/Flight-School/pos.git", :branch => "master"
  head "https://github.com/Flight-School/pos.git", :shallow => false
  version "0.0.1"

  depends_on :macos => :sierra
  depends_on :xcode => [">= 11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/pos"
  end
end
