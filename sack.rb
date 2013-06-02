require 'formula'

class Sack < Formula
  homepage 'https://github.com/nybblr/sack'
	url 'https://github.com/nybblr/sack',
		:using => :git,
		:revision => "e0b4aa0d23dc04f621541c25f571b8212ec74372"
  version "0.2.1"

  # depends_on :ack => :recommended
  # depends_on :the_silver_searcher => :recommended

  def install
    bin.install "sack", "sag", "sgrep", "F"
  end

  test do
    system "sack"
  end
end
