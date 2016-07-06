class Klavaro < Formula
  desc "Free touch typing tutor program"
  homepage "http://klavaro.sourceforge.net/"
  url "https://downloads.sourceforge.net/project/klavaro/klavaro-3.02.tar.bz2"
  sha256 "5f77730a8c1c8dfd4443ec8390c7226e3f82537df0882cd1222b140f0d0fcd6c"

  bottle do
    sha256 "93914a2c1ab59e2584c76289e3bb70932093a255e88a459676c73fd053e69953" => :el_capitan
    sha256 "185b17400268d72f35ba0d0f3b3636ad38b65a30a12aac1686efb29eecdc39ee" => :yosemite
    sha256 "187ec06c8715d18402ec0aa445ad80ece89a38fdca7d087f0e828d98d7cc3cc5" => :mavericks
  end

  depends_on "pkg-config" => :build
  depends_on "intltool" => :build
  depends_on "gtk+3"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system bin/"klavaro", "--help-gtk"
  end
end
