# Found in http://askubuntu.com/questions/789915/ubuntu-16-04-multitouch-gestures

# At first download, compile libinput-gestures and install from git repository:
git clone http://github.com/bulletmark/libinput-gestures
cd libinput-gestures
sudo make install

# Make sure libinput-tools and xdotool are installed:
sudo apt install libinput-tools xdotool

# Make sure current user is in the input group to have permission to read the
# touchpad device:
sudo gpasswd -a $USER input  # Log out and back in to assign this group

# Start libinput-gestures on every start up:
libinput-gestures-setup autostart

# Now you can change your virtual workspace by swiping up an down. If you want
# to make some custom configuration, you should copy the configuration file to
# your home folder. You can then change it there.
cp /etc/libinput-gestures.conf ~/.config/libinput-gestures.conf
nano ~/.config/libinput-gestures.conf
