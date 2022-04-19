
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
