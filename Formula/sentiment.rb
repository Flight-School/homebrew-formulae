class Sentiment < Formula
  desc "Determines the emotional sentiment of natural language text."
  homepage "https://github.com/Flight-School/sentiment"
  url "https://github.com/Flight-School/sentiment.git", :branch => "master"
  head "https://github.com/Flight-School/sentiment.git", :shallow => false
  version "0.0.1"

  depends_on :macos => :catalina
  depends_on :xcode => [">= 11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/sentiment"
  end
end
