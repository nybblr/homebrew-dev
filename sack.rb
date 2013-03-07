require 'formula'

class Sack < Formula
  homepage 'https://github.com/sampson-chen/sack'
	url 'https://github.com/sampson-chen/sack',
		:using => :git,
		:revision => "c7bf88bbb5adf8b84314c971021707891d0ed418"
  version "0.1"

  # depends_on :ack => :recommended
  # depends_on :the_silver_searcher => :recommended

  def install
    bin.install "sack", "sag", "sgrep"
  end

  test do
    system "sack"
  end
end
