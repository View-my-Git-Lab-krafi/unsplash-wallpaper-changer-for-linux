#!/bin/bash

echo "This is version 1.1 of the script"
echo "Its 1.1 , but dont this its beta, its rock solid stable"

    echo "=================================================================================================="
    echo "=================================================================================================="
    echo "=================================================================================================="
    echo "===========================+    "keep folling www.krafi.info "      +============================="
    echo "===========================+     echo "www.gitlab.com/krafi"        +============================="
    echo "=================================================================================================="
    echo "=================================================================================================="
    echo "=================================================================================================="


# List of search queries to use
queries=(
    "quran"
    "russia"
    "moscow"
    "cactus"
    "horror"
    "nature"
    "quotes"
    "technology"
    "travel"
    "universe"
    "3D"
    "islamic"
    "mathematics"
    "mosques"
    "Kaaba"
    "Linux"
    "Kremlin"
    "korea"
    "southkorea"
    "kazan"
    "Faberge"
    "Madinah"
    "Sochi"
    "Alhambra"
    "Novgorod"
    "StPetersburg"
    "Seoul"
    "Jeju"
    "Busan"
    "Gyeongju"
    "Incheon"
    "Daegu"
    "Jeonju"
    "Andong"
    "Sokcho"
)

echo "3"; sleep 1s; echo "2"; sleep 1s; echo "1"; sleep 1s; echo "Run!"; sleep 2s

feh --randomize --bg-fill ~/Pictures/Wallpapers@krafi.info/* 2>/dev/null

# Create a directory for storing pictures in the home directory
mkdir -p ~/Pictures

# Create a directory for storing local binaries in the home directory
mkdir -p ~/.local/bin/


# Get the full path and filename of the currently running script
fullpath="$(realpath "$0")"

# Get the filename with extension
filename="$(basename "$fullpath")"

echo "The name of the currently running script is: $filename"

 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "================+                                                               +================="
 #   echo "================+    This section is for installing this file on yor system     +================="
 #   echo "================+                   it make a copy of this file to              +================="
 #   echo "================+                        ~/.local/bin/$filname                  +================="
 #   echo "================+                                                               +================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 
 
# Pause the script or command for 10 seconds before continuing
sleep 5s

# Check if ~/.local/bin/ exists
if [ ! -f ~/.local/bin/"$filename" ]; then
    # Check if the script is already running from ~/.local/bin
    if [ "$(dirname "$fullpath")" != "$HOME/.local/bin" ]; then
        echo "Creating ~/.local/bin/$filename"
        # Create the directory if it doesn't exist
        mkdir -p ~/.local/bin
        # Copy this script to ~/.local/bin/xyz.sh
        cp "$fullpath" ~/.local/bin/"$filename"
        
        # Make the file executable if it isn't already
        if [[ $(stat -c '%a' ~/.local/bin/"$filename") != "755" ]]; then
            # Check if pkexec is available, and if so, use it to set the file mode
            if command -v pkexec >/dev/null 2>&1; then
                pkexec chmod +x ~/.local/bin/"$filename"
            else
                # Otherwise, try to set the file mode using sudo (if available)
                if command -v sudo >/dev/null 2>&1; then
                    sudo chmod +x ~/.local/bin/"$filename"
                else
                    echo "Could not set file mode for ~/.local/bin/$filename. Please set it manually."
                fi
            fi
        fi
    else
        echo "The script is already running from the ~/.local/bin directory. Skipping copy to prevent infinite loop."
    fi
else
    echo "File ~/.local/bin/$filename already exists. Skipping copy."
fi


  
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "======================+                                                    +======================"
 #   echo "======================+    This section is for downloading wget and feh    +======================"
 #   echo "======================+         Tested on Fedora , ubuntu , arch           +======================"
 #   echo "======================+         Tested on Fedora , ubuntu , arch           +======================"
 #   echo "======================+                                                    +======================"
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="

# Create the directory for the wallpapers
mkdir -p ~/Pictures/Wallpapers@krafi.info

# Detect package manager and install required packages
if command -v apt-get &> /dev/null; then
    echo "Detected apt package manager"
    if ! command -v wget &> /dev/null; then
        pkexec apt-get update
        pkexec apt-get install wget
    else
        echo "wget is already installed"
    fi

    if ! command -v feh &> /dev/null; then
        pkexec apt-get update
        pkexec apt-get install feh
    else
        echo "feh is already installed"
    fi

elif command -v yum &> /dev/null; then
    echo "Detected yum package manager"
    if ! command -v wget &> /dev/null; then
        pkexec yum install wget
    else
        echo "wget is already installed"
    fi

    if ! command -v feh &> /dev/null; then
        pkexec yum install feh
    else
        echo "feh is already installed"
    fi

elif command -v pacman &> /dev/null; then
    echo "Detected pacman package manager"
    if ! command -v wget &> /dev/null; then
        pkexec pacman -Syu wget
    else
        echo "wget is already installed"
    fi

    if ! command -v feh &> /dev/null; then
        pkexec pacman -Syu feh
    else
        echo "feh is already installed"
    fi

elif command -v dnf &> /dev/null; then
    echo "Detected dnf package manager"
    if ! command -v wget &> /dev/null; then
        pkexec dnf install wget
    else
        echo "wget is already installed"
    fi

    if ! command -v feh &> /dev/null; then
        pkexec dnf install feh
    else
        echo "feh is already installed"
    fi

else
    echo "Unable to detect package manager"
    echo "This error is coming from line 143"
    echo "Still wana fix this code"
    echo "install feh and wget manually "
    echo "remove 'exit 1' this one from line 143"
    
    exit 1
fi

 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "================+                                                               +================="
 #   echo "================+                    adding to to systemd                       +================="
 #   echo "================+                        for autostart                          +================="
 #   echo "================+                                                               +================="
 #   echo "================+                                                               +================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 


# Check if the hello.service file already exists
if [ ! -f /etc/systemd/system/$filename.service ]; then
    # Create a systemd service to run the script at startup
    pkexec sh -c "cat <<EOF > /etc/systemd/system/$filename.service
[Unit]
Description= Unsplash Wallpaper generator by Krafi.info

[Service]
ExecStart=$HOME/.local/bin/$filename

[Install]
WantedBy=multi-user.target
EOF"

    # Reload systemd to make it aware of the new service
    pkexec systemctl daemon-reload

    # Enable the service to start automatically at boot time
    pkexec systemctl enable $filename.service
fi

# Check if the hello.service is currently running
if ! pkexec systemctl is-active --quiet $filename.service; then
    # Start the service immediately
    pkexec systemctl start $filename.service
fi

 
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "================+                                                               +================="
 #   echo "================+                Take random string from that query             +================="
 #   echo "================+             download that image and set as wallpaper          +================="
 #   echo "================+                        keep repeat (loop)                     +================="
 #   echo "================+                                                               +================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 #   echo "=================================================================================================="
 

# Loop through the list of queries
for (( i=0; i<${#queries[@]}; i++ ))
do
    # Select a random query from the array
    query=${queries[$RANDOM % ${#queries[@]}]}

    # Download a random image for the current query
    filename="$(date +"%d-%m-%y-%s").jpg"
    wget -O ~/Pictures/Wallpapers@krafi.info/$filename "https://source.unsplash.com/random/1920x1080/?$query"
    feh --bg-fill ~/Pictures/Wallpapers@krafi.info/$filename


    echo "=================================================================================================="
    echo "=================================================================================================="
    echo "=================================================================================================="
    echo "==========================================    $query    =========================================="
    echo "=================================================================================================="
    echo "=================================================================================================="
    echo "=================================================================================================="


    # Wait for 60 seconds before proceeding to the next query
    sleep 60s
done
