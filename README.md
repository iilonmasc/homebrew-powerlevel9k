## About

This is a OSX/macOS [homebrew](https://brew.sh) tap for the [powerlevel9k zsh theme by bhilburn](https://github.com/bhilburn/powerlevel9k)

## Dependencies
- zsh --5.1

## Installation
First get the homebrew tap and install the formula

```bash
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
```

Afterwards you need to add the theme to your `.zshrc` file, simply add the following line

`source /usr/local/opt/powerlevel9k.zsh-theme`

## Options
`--HEAD` Install HEAD version from `bhilburn/powerlevel9k/master`

`--devel` Install `next` version from `bhilburn/powerlevel9k/next`

# Versions
You can also install different versions of p9k (0.6.3 for example) -> `brew install powerlevel9k@0.6.3`

However the path to the theme varies if you specify a version.

You have to add `source /usr/local/opt/powerlevel9k@<version>.zsh-theme` to your `.zshrc` depending on the version you specified
