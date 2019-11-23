class Lemma < Formula
  desc "Provides the stems of words in natural language text."
  homepage "https://github.com/Flight-School/lemma"
  url "https://github.com/Flight-School/lemma.git", :branch => "master"
  head "https://github.com/Flight-School/lemma.git", :shallow => false
  version "0.0.1"

  depends_on :macos => :sierra
  depends_on :xcode => [">= 11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/lemma"
  end
end
