echo "Running _install_source_dynamo_osx-x64_from_local.sh" &&

# Set the package name and version
EXECUTABLE_NAME="sourcedynamo" &&

echo EXECUTABLE_NAME: $EXECUTABLE_NAME &&
echo sudo mkdir -p ~/.sd/ &&
sudo mkdir -p ~/.sd/ &&

echo sudo cp ./sourcedynamo/osx-x64/$EXECUTABLE_NAME ~/.sd/$EXECUTABLE_NAME &&
sudo cp ./sourcedynamo/osx-x64/$EXECUTABLE_NAME ~/.sd/$EXECUTABLE_NAME &&

echo sudo chmod +x ~/.sd/$EXECUTABLE_NAME &&
chmod +x ~/.sd/$EXECUTABLE_NAME &&

if [ -e ~/.bashrc ]
then
  echo if [ -e ~/.bashrc ] &&
  
  echo 'export PATH="${PATH}:~/.sd/"' >> ~/.bashrc &&
  sudo chmod +x ~/.sd/$EXECUTABLE_NAME &&
  source ~/.bashrc
fi &&

if [ -e ~/.zshrc ]
then
  echo if [ -e ~/.zshrc ] &&
  echo 'export PATH="${PATH}:~/.sd/"' >> ~/.zshrc &&
  sudo chmod +x ~/.sd/$EXECUTABLE_NAME &&
  source ~/.zshrc
fi &&

if [ -e ~/.zshprofile ]
then
  echo if [ -e ~/.zshprofile ] &&
  echo 'export PATH="${PATH}:~/.sd/"' >> ~/.zshprofile &&
  sudo chmod +x ~/.sd/$EXECUTABLE_NAME &&
  source ~/.zshprofile
fi &&

echo "Source Dynamo has been installed and can be called as sourcedynamo"