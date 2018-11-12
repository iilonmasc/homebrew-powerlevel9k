class Powerlevel9kAt065 < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.6.5.tar.gz"
  sha256 "d69d291618fd506e5889240d23080eb40c3f02493682d117880d69e3f71e349c"
  head "https://github.com/bhilburn/powerlevel9k.git"

  depends_on "zsh" => "5.1"

  def install
    (var/"log/powerlevel9k").mkpath
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    If you want to load powerlevel9k in your zsh simply add the following line to your .zshrc:
      
      source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
    
    EOS
  end
end
