# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Brewfile
install openssl
link --force openssl

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
install findutils

# Install wget with IRI support
install wget --enable-iri

# Install more recent versions of some OS X tools
install macvim --override-system-vi
install homebrew/dupes/grep

# Install scala, sbt
install scala
install sbt

install parallel

# Remove outdated versions from the cellar
cleanup


