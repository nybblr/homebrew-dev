require 'formula'

class Sack < Formula
  homepage 'https://github.com/sampson-chen/sack'
	url 'https://github.com/nybblr/sack',
		:using => :git,
		:revision => "821ecfc2bb9d0f28a3507bf41ec69fa6b350576d"
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
