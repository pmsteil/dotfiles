
mkdir -p ~/bin
echo 'PATH+=:$HOME/bin' >> ~/.bashrc
cp bin/* ~/bin

echo "All bin files copied to ~/bin and ~/bin added to path..."
echo "Please run:"
echo "  source .bashrc "
echo "or logout and login... "
echo 