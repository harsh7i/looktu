
echo "
╦ ╦  ╔═╗  ╦═╗  ╔═╗  ╦ ╦
╠═╣  ╠═╣  ╠╦╝  ╚═╗  ╠═╣
╩ ╩  ╩ ╩  ╩╚═  ╚═╝  ╩ ╩
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

# Changing Termux Repository

REPO='repo'
if [ -f "$REPO" ]; then
    echo "Repository Already Changed !"
else
    echo "Change Your Termux Repository !"
    apt update -y
    apt upgrade -y
    pkg update -y
    pkg install curl -y
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

cd ..

# In data/files folder

cd usr/etc

# In usr/etc folder

if [ -f "motd" ]; then
    rm motd*
    echo "Removing....."
    echo "Removed"
else
    echo "Well Done !"
fi

cd

# In home folder

cd termux-setup

# In termux-setup folder

if [ -f "zshrc" ]; then
    rm zshrc
    cd ..
    cd ..
    # In data/files folder
    cd usr/etc
    # In usr/etc folder
    echo 'w="\033[0;37m"
echo "${w}
╔═╗  ╔╦╗  ╦═╗  ╔═╗  ╔╗╔  ╔═╗  ╔═╗
╚═╗   ║   ╠╦╝  ╠═╣  ║║║  ║ ╦  ║╣
╚═╝   ╩   ╩╚═  ╩ ╩  ╝╚╝  ╚═╝  ╚═╝"
echo "Start Coding with Yourself !"
echo "____________________________"
echo " "'>>zshrc
    cd
fi

cd
# In home folder
