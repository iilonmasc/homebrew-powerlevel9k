class Powerlevel9kAT050 < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.5.0.tar.gz"
  sha256 "8b3893768a5dac4fe100739073bacee5aa8c7062e6f37d0ca218cf2ebf97310e"
  head "https://github.com/bhilburn/powerlevel9k.git"

  depends_on "zsh" => "5.1"

  def install
    (var/"log/powerlevel9k").mkpath
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    If you want to load powerlevel9k in your zsh simply add the following line to your .zshrc:

      source #{opt_prefix}/powerlevel9k.zsh-theme

    EOS
  end
end
