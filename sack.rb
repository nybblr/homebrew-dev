require 'formula'

class Sack < Formula
  homepage 'https://github.com/nybblr/sack'
	url 'https://github.com/nybblr/sack',
		:using => :git,
		:revision => "8e31b5c4e0b5a1315a3952c55faae0e7bf3c9550"
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
