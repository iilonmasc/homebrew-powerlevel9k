class Powerlevel9kAt064 < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.6.4.tar.gz"
  sha256 "b81684636efb5eeac1a41c1e39c098da852737e67c678efdea4f200d5bae42c7"
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
