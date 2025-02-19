<div align="center">
	<img src="src/images/alpine.jpg">
</div>

## Setting an Alpine Linux desktop

### Neofetch

```shell
[fak3r@slug alpine-linux-desktop]$ neofetch
       .hddddddddddddddddddddddh.          fak3r@slug
      :dddddddddddddddddddddddddd:         ----------
     /dddddddddddddddddddddddddddd/        OS: Alpine Linux edge x86_64
    +dddddddddddddddddddddddddddddd+       Host: MINI S
  `sdddddddddddddddddddddddddddddddds`     Kernel: 6.12.13-0-lts
 `ydddddddddddd++hdddddddddddddddddddy`    Uptime: 1 day, 6 hours, 35 mins
.hddddddddddd+`  `+ddddh:-sdddddddddddh.   Packages: 952 (apk), 24 (flatpak)
hdddddddddd+`      `+y:    .sddddddddddh   Shell: bash 5.2.37
ddddddddh+`   `//`   `.`     -sddddddddd   Resolution: 1920x1080
ddddddh+`   `/hddh/`   `:s-    -sddddddd   DE: Xfce 4.20
ddddh+`   `/+/dddddh/`   `+s-    -sddddd   WM: Xfwm4
ddd+`   `/o` :dddddddh/`   `oy-    .yddd   WM Theme: Default
hdddyo+ohddyosdddddddddho+oydddy++ohdddh   Theme: Adwaita [GTK2/3]
.hddddddddddddddddddddddddddddddddddddh.   Icons: Adwaita [GTK2/3]
 `yddddddddddddddddddddddddddddddddddy`    Terminal: alacritty
  `sdddddddddddddddddddddddddddddddds`     CPU: Intel Celeron N5095 (4) @ 2.900GHz
    +dddddddddddddddddddddddddddddd+       GPU: Intel JasperLake [UHD Graphics]
     /dddddddddddddddddddddddddddd/        Memory: 4209MiB / 7729MiB
      :dddddddddddddddddddddddddd:
       .hddddddddddddddddddddddh.
```

## Upgrade

```shell
apk -U upgrade
```

## Files and packages

### Files

Files, including configuration, setttings, walpaper, icons, etc that Ansible will setup

```shell
src has files config'd for desktop
```

## Setup

## Wallpaper

```shell
cp src/images/Nordic-mountain-wallpaper.jpg .local/share/backgrounds
```

## Mouse cursors

```shell
cp -r src/icons ~/.local/share/
```

### rofi example

```shell
rofi -combi-modi drun,ssh -theme solarized -font "hack 10" -show combi -show-icons
```

simplier, just run

```shell
rofi -combi-modi drun,ssh -theme solarized -font "hack 25" -show combi -show-icons
```

## Configs

```shell
cp src/conf/.* ~
```

### Installed packages and their stats

All packages that Ansible will install, and their stats

```shell
doas apk info > packages_installed.txt; doas apk stats > package_stats.txt
```

### Ansible

https://wiki.alpinelinux.org/wiki/Ansible	


## License

MIT

## More reading and ideas

https://github.com/a1010s/alpine-linux-xrdp-ansible
https://github.com/xlanor/ansible-alpine-initial
https://www.brianlane.com/post/alpine-laptop/
https://www.brianlane.com/git/alpine-laptop/commit/3e792a82413c1bf5743aa0aae65fc5ce0f55d6e1.html
https://whynothugo.nl/journal/2023/11/19/setting-up-an-alpine-linux-workstation/
https://dev.to/iancleary/automating-your-desktop-with-ansible-20jk
https://hub.docker.com/r/alpine/ansible
https://github.com/alpine-docker/multi-arch-docker-images/blob/master/ansible/Dockerfile

### Thanks


