require 'formula'

class Ngrok < Formula
  homepage 'https://ngrok.com'
  version '1.6'
  url 'https://dl.ngrok.com/darwin_amd64/1.6/ngrok.zip'
  sha1 '3c34a7d2b44226ab99b9b51fadc7808db7ace8ff'

  depends_on :arch => :intel
  depends_on :arch => :x86_64

  def install
    bin.install 'ngrok'
  end

  test do
    system "#{bin}/ngrok", 'version'
  end
end
