class Powerlevel9k < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.6.7.tar.gz"
  sha256 "d6e3eaee522a70aa03aa832787e1526aba6419f6347d3e5058137e18cfadb13d"
  head "https://github.com/bhilburn/powerlevel9k.git"
  head do
    url "https://github.com/bhilburn/powerlevel9k/archive/next.tar.gz"
    version "next"
  end

  depends_on "zsh" => "5.1"

  def install
    (var/"log/powerlevel9k").mkpath
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    If you want to load powerlevel9k in your zsh simply add the following line to your .zshrc:

      source #{opt_prefix}/powerlevel9k.zsh-theme

    Alternatively you can run this command to append the line to your .zshrc

      echo "source #{opt_prefix}/powerlevel9k.zsh-theme" >> ~/.zshrc

    EOS
  end
end
