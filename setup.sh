
echo "
╦  ╔═╗╔╦╗╔═╗  ╔╗ ╔═╗╔═╗╦╔╗╔
║  ║╣  ║ ╚═╗  ╠╩╗║╣ ║ ╦║║║║
╩═╝╚═╝ ╩ ╚═╝  ╚═╝╚═╝╚═╝╩╝╚╝
"

cd ..
STORAGE='storage'
if [ -d "$STORAGE" ]; then
    echo "Storage Setup Already Satisfied !"
else
    echo "Allow Storage !"
    termux-setup-storage
fi

cd termux-setup
apt install curl

REPO='repo'
if [ -f "$REPO" ]; then
    echo "Repository Already Changed !"
else
    echo "Change Your Termux Repository !"
    termux-change-repo
    curl -OL https://raw.githubusercontent.com/harsh7839/termux-setup-files/main/repo
fi
