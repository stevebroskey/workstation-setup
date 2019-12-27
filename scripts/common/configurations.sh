echo
echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring ShiftIt"
##TODO: Open a non-signed app (Shiftit)
open /Applications/ShiftIt.app

## Remove FlyCut because it's no longer installed
## echo "Configuring FlyCut"
## open /Applications/Flycut.app

echo
echo "Installing vim configuration"
#TODO: Make this ours
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    ~/.vim/bin/install
fi
popd


