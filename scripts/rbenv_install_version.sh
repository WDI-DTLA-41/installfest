#-------------------------------------------------------------------------------
# Install Ruby (rbenv_install_version.sh)
#-------------------------------------------------------------------------------

inform "Installing correct Ruby version and optimizing for your system..." true
inform "🕑 Note: this may take a VERY LONG TIME!"

ruby_check=$(rbenv versions | grep $BELOVED_RUBY_VERSION)

if [[ "$ruby_check" == *$BELOVED_RUBY_VERSION* ]]; then
  show "$BELOVED_RUBY_VERSION is installed! Moving on..."
else
  rbenv install $BELOVED_RUBY_VERSION
fi
