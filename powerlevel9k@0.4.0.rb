class Powerlevel9kAT040 < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.4.0.tar.gz"
  sha256 "05faa2795152e907ce56ae39dea893e8d463619d32435333adb8fe7854c9fe26"
  head "https://github.com/bhilburn/powerlevel9k.git"

  depends_on "zsh" => "5.1"

  def install
    (var/"log/powerlevel9k").mkpath
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    If you want to load powerlevel9k in your zsh simply add the following line to your .zshrc:

      source #{opt_prefix}powerlevel9k.zsh-theme

    EOS
  end
end
