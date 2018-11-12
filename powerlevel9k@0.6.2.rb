class Powerlevel9kAT062 < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.6.2.tar.gz"
  sha256 "7abc200ffec3d4d78fbab8ac667ce0f253d62f04178eff9f7d6137b8d68cadd2"
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
