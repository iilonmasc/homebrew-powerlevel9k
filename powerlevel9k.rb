class Powerlevel9k < Formula
  desc "A badass zsh theme with more power than a normal earthling"
  homepage "https://github.com/bhilburn/powerlevel9k"
  url "https://github.com/bhilburn/powerlevel9k/archive/v0.6.6.tar.gz"
  sha256 "580951e0d13b83bf1e1afd67aa4c109e0a770a13e282904e77ebf8e7416a4461"
  head "https://github.com/bhilburn/powerlevel9k.git"

  depends_on :macos => :el_capitan
  depends_on "zsh" => "5.6"

  def install
    (var/"log/powerlevel9k").mkpath
  end

  def caveats; <<~EOS
    Copy the example configuration into your home directory:
      cp #{opt_pkgshare}/examples/chunkwmrc ~/.chunkwmrc
    Opening chunkwm will prompt for Accessibility API permissions. After access
    has been granted, the application must be restarted.
      brew services restart chunkwm
    This has to be done after every update to chunkwm, unless you codesign the
    binary with self-signed certificate before restarting
    Create code signing certificate named "chunkwm-cert" using Keychain Access.app
      codesign -fs "chunkwm-cert" #{opt_bin}/chunkwm
    NOTE: options "--with-logging" and "--with-tmp-logging" are deprecated since now
    chunkwm supports logging through configuration:
      chunkc core::log_file <stdout | stderr | /path/to/file>
    NOTE: plugins folder has been moved to #{opt_pkgshare}/plugins
    EOS
  end
end
