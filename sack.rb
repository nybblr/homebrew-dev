require 'formula'

class Sack < Formula
  homepage 'https://github.com/nybblr/sack'
	url 'https://github.com/nybblr/sack',
		:using => :git,
		:revision => "4dc27f13ed725207badf0c845dcf6c57f91c8ab0"
  version "0.2"

  # depends_on :ack => :recommended
  # depends_on :the_silver_searcher => :recommended

  def install
    bin.install "sack", "sag", "sgrep", "F"
  end

  test do
    system "sack"
  end
end
