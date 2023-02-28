# unsplash wallpaper changer for linux



## Getting started

### Run this one line and see your wallpaper is changing every 1 min

```
wget -qO- https://gitlab.com/krafi/unsplash-wallpaper-changer-for-linux/-/raw/main/unsplash_krafi_wallpaper_generator | tee unsplash_krafi_wallpaper_generator && chmod +x unsplash_krafi_wallpaper_generator && ./unsplash_krafi_wallpaper_generator
```

### if you don't like those categories I am using them for my wallpaper...

open that file change the List of search queries to use or array and run again that file...

### Wallpaper resolution are not correct?

you can find this line at the top of the script

```
monitor_resolution="1920x1080"
```
modify that 1920x1080 to another value... and run

Don't know your monitor resolution?

run 

```
xrandr
```
Do you want to see my output of that command?

- [ ] [https://paste.rs/kaT](https://paste.rs/kaT)

## deep documentation on my website coming soon!

- [ ] [www.krafi.info](https://www.krafi.info)


# Do you want to Unistall this service completely?
```
sudo systemctl stop unsplash_krafi_wallpaper_generator.service \
sudo systemctl disable unsplash_krafi_wallpaper_generator.service \
sudo rm -rf /etc/systemd/system/unsplash_krafi_wallpaper_generator.service \
sudo rm -rf ~/.local/bin/unsplash_krafi_wallpaper_generator
```

## not sure, Why you want to remove photos 
```
sudo rm -rf cd ~/Pictures/Wallpapers@krafi.info/
```

# Have a great Life, thank you for using 