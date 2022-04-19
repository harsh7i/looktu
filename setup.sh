
echo "
╦  ╔═╗╔╦╗╔═╗  ╔╗ ╔═╗╔═╗╦╔╗╔
║  ║╣  ║ ╚═╗  ╠╩╗║╣ ║ ╦║║║║
╩═╝╚═╝ ╩ ╚═╝  ╚═╝╚═╝╚═╝╩╝╚╝
"

# In termux-setup folder

cd ..
# In home folder

# Storage Setup

STORAGE='storage'
if [ -d "$STORAGE" ]; then
    echo "Storage Setup Already Satisfied !"
else
    echo "Allow Storage !"
    termux-setup-storage
fi

cd termux-setup

# In termux-setup folder

apt install curl

# Changing Termux Repository

REPO='repo'
if [ -f "$REPO" ]; then
    echo "Repository Already Changed !"
else
    echo "Change Your Termux Repository !"
    termux-change-repo
    curl -OL https://raw.githubusercontent.com/harsh7839/termux-setup-files/main/repo
fi

cd ..

# In home folder

THEMEDL='termux-ohmyzsh'
if [ -d "$THEMEDL" ]; then
    echo "Theme Already Downloaded, It's Time to Install !"
else
    echo "Downloading Termux Theme !"
    git clone https://github.com/Cabbagec/termux-ohmyzsh.git
    echo "Successfully Instilled !"
fi

cd termux-setup

# In termux-setup folder

THEMEIN='theme'
if [ -f "$THEMEIN" ]; then
    echo "Your Theme is Already Installed !"
else
    echo "Installing.... Termux Theme !"
    cd ..
    # In home folder
    bash termux-ohmyzsh/install.sh
    cd termux-setup
    curl -OL https://raw.githubusercontent.com/harsh7839/termux-setup-files/main/theme
    echo " Successfully Theme Installed !"
fi

cd ..

# In home folder

echo "Do you want to remove - Welcome to Termux (y/n): "
read MOTD_PARAM
TRUE='y'

if [ "$MOTD_PARAM"=="$TRUE" ]; then
   echo "Yes"
else
   echo "No"
fi
