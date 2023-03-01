# unsplash wallpaper changer for linux


## Getting started
#### If it show any issue dont forget to create a bug request,, it may take about a min to startup, 
##### Tested on Fedora , Ubuntu , Arch . Recomended to use it on i3 , KDE , Gnome , Unity  desktop envirment or window manager.

if you are using other system ,
you need to find a way to 
autostart ~/.local/bin/unsplash_krafi_wallpaper_generator
and kill any other wallpeper manager that conflict nitrogen

### Run this one line and see your wallpaper is changing every 30s

```
wget -qO- https://gitlab.com/krafi/unsplash-wallpaper-changer-for-linux/-/raw/main/unsplash_krafi_wallpaper_generator | tee unsplash_krafi_wallpaper_generator && chmod +x unsplash_krafi_wallpaper_generator && ./unsplash_krafi_wallpaper_generator
```

#### set  wallpaper resolution.
open the file unsplash_krafi_wallpaper_generator and change the value 1920x1080

you can find this line at the top of the script

Change,
```
monitor_resolution="1920x1080"
```
modify that 1920x1080 to another value... and reinstall ?

#### Don't know how to reinstall ?
Run,

```
 rm -rf ~/.local/bin/unsplash_krafi_wallpaper_generator 
 ./unsplash_krafi_wallpaper_generator
 
```
##### Don't know your monitor resolution?
Run, 

```
xrandr
```
Do you want to see my output of that command ?

- [ ] [https://paste.rs/kaT](https://paste.rs/kaT)

### if you don't like those categories I am using them for my wallpaper...
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
    "3D
    "islamic"
    "mathematics"
    "mosques"
    "Kaaba"
    "Linux"
    "korea"
    "southkorea"
    "kazan"
    "Seoul"
    "Busan"

)
open that file change the List of search queries and reinstall that file...

### All the Download Photos will save into ~/Pictures/Wallpapers@krafi.info/ this directory

### Worry about Storage ?

well, don't worry i have the solution. by defult it will Continue Downloading 9gb than it will start removing old photos by created time on that directory , and alaways try to remove same photo.

But you can Change this limit value  max_size_gb=9 to you can make it 99999999 or 1 and dont forget to reinstall.
## deep documentation on my website coming soon!

- [ ] [www.krafi.info](https://www.krafi.info)


List of dependencies _

1. polkit
2. nitrogen ( if not installed this script will auto install )
3. wget ( if not installed this script will auto install )

# Do you want to Unistall this service completely?
```
sudo rm -f ~/.local/bin/unsplash_krafi_wallpaper_generator && sudo rm -f ~/.config/autostart/unsplash_krafi_wallpaper_generator.desktop
```

#### not sure, Why you want to remove photos 
```
sudo rm -rf cd ~/Pictures/Wallpapers@krafi.info/
```


# Have a great Life, thank you for using 

<!--
sudo systemctl stop unsplash_krafi_wallpaper_generator.service \
sudo systemctl disable unsplash_krafi_wallpaper_generator.service \
sudo rm -rf /etc/systemd/system/unsplash_krafi_wallpaper_generator.service \
-->

