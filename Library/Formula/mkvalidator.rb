require 'formula'

class Mkvalidator <Formula
  url 'http://downloads.sourceforge.net/project/matroska/mkvalidator/mkvalidator-0.3.2.tar.bz2'
  homepage 'http://www.matroska.org/downloads/mkvalidator.html'
  md5 'f3895e19e2b1579750d3a205dc4eec73'

  def install
    system "./configure"
    system "make -C mkvalidator"
    bindir = `corec/tools/coremake/system_output.sh`.chomp
    bin.install "release/#{bindir}/mkvalidator"
  end
end
