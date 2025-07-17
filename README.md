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
## The idea

After running Linux since 1999, I've preferred Linux on the desktop ([queue the long running joke](https://hackaday.com/2024/12/31/why-2025-will-not-be-the-year-of-linux-on-the-desktop/)) since the early 2000s. I won't argue its merits, what you can do with it versus Windows (PROGRA~1), or MacOS (Mac OS 9, OS X, macOS), I'll just say; it's more fun, more flexiable and just gives me the same feeling of adventure and discovery I had when I first started learning computers in the early 80s, partically on my first computer, the venerable [Apple //e](https://en.wikipedia.org/wiki/Apple_IIe). 

Boucning from different Linux distributions in search of a usable desktop has been (almost) a life long challage, but finding one that made me feel at home has been an endless search and as I am won't to say; I reinstall often. So the idea of this repo is to automate that setup so I have something of my own, using common software, yes, but having it setup, installed, configured and ready to go the way I want. Thus this project includes an opinioated, automated installer using [Ansible](https://www.redhat.com/en/ansible-collaborative), using [Alpine Linux](https://www.alpinelinux.org/), self-described as, *"a security-oriented, lightweight Linux distribution based on musl libc and busybox"*. Without giving too much away, Alpine Linux is a mininimal system that allows you to build what you want, they don't have ready made desktop version, thus it's up to you to choose, install, configure all the bits and make everything work. While this is something I enjoy I recognize my weirdness and wanted to produce some code that would automate this, allowing me to have things just the way I want, regardless if I was on a desktop, laptop, or even a server. No a server won't have the UI, sound, printing considerations, but outside of that all the tooling and configuration of that tooling... well I want it to be consistant. And when I change something for the bettter I want that replicated to all of my systems, and this happens via [ansible-pull](https://docs.ansible.com/ansible/latest/cli/ansible-pull.html).

So in short, the idea is, you install Alpine Linux via their [excellent documentation](https://wiki.alpinelinux.org/wiki/Main_Page), install *git*, then checkout this project, run a shell script, and let it do it's thing.

## Install/Usage

1) Install Alpine Linux on a computer
2) Install *git*
```
(doas) apk git
```
3) Checkout this project
```
git clone git@github.com:philcryer/alpine-linux-desktop.git
```
4) Run the installer
```
sh install.sh
```
5) ???
6) Profit! (profit not guarenteed or implied)

## Notes, hints and daily usage 

Some of these topics are day-to-day usage tips, others are configs which will be automatically applied via the installer.

### Upgrade the OS

```shell
apk -U upgrade
```

### Included files

The **src** directory has files config'd for desktop

### Wallpapers

```shell
mkdir -p .local/share/backgrounds
cp src/images/Nordic-mountain-wallpaper.jpg .local/share/backgrounds
```

### Mouse cursors

```shell
cp -r src/icons ~/.local/share/
```

### rofi/wofi (app launcher cmd)

```shell
rofi -combi-modi drun,ssh -theme solarized -font "hack 10" -show combi -show-icons
```

simplier, just run

```shell
rofi -combi-modi drun,ssh -theme solarized -font "hack 25" -show combi -show-icons
```

### Configs

```shell
cp src/conf/.* ~
```

### Installed packages and their stats

All packages that Ansible will install, and their stats, this helps me track what was installed so I can add it to Ansible so it's consistent going forward

```shell
doas apk info > packages_installed.txt; doas apk stats > package_stats.txt
```

## License

MIT

## More reading and ideas

* https://github.com/a1010s/alpine-linux-xrdp-ansible
* https://github.com/xlanor/ansible-alpine-initial
* https://www.brianlane.com/post/alpine-laptop/
* https://www.brianlane.com/git/alpine-laptop/commit/3e792a82413c1bf5743aa0aae65fc5ce0f55d6e1.html
* https://whynothugo.nl/journal/2023/11/19/setting-up-an-alpine-linux-workstation/
* https://dev.to/iancleary/automating-your-desktop-with-ansible-20jk
* https://hub.docker.com/r/alpine/ansible
* https://github.com/alpine-docker/multi-arch-docker-images/blob/master/ansible/Dockerfile

## Quote

Harry Tuttle: *"Listen, kid, we're all in it together."*

### Thanks
