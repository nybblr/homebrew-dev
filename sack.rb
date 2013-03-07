require 'formula'

class Sack < Formula
  homepage 'https://github.com/nybblr/sack'
	url 'https://github.com/nybblr/sack',
		:using => :git,
		:revision => "681b7301c0d3b8313c47d7f4563287e3d9419181"
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
