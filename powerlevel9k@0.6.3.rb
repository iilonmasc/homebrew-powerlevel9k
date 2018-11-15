class Powerlevel9kAT063 < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.6.3.tar.gz"
  sha256 "42220fd5ab322e4cebeb9da4c2cd8ff65e65015a10363579cbbb8c296db3db32"
  head "https://github.com/bhilburn/powerlevel9k.git"

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
