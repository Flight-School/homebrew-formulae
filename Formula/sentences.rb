class Sentences < Formula
  desc "Splits natural language text into sentences."
  homepage "https://github.com/Flight-School/sentences"
  url "https://github.com/Flight-School/sentences.git", :branch => "master"
  head "https://github.com/Flight-School/sentences.git", :shallow => false
  version "0.0.1"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/sentences"
  end
end
