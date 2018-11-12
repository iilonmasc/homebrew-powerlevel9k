class Powerlevel9kAt060 < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.6.0.tar.gz"
  sha256 "985e41232a1f86cad603a8964f5273eb7a99a156733102ef96de4e8262d50160"
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
