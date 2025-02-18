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

### Ansible

https://wiki.alpinelinux.org/wiki/Ansible	

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

### Installed packages and their stats

All packages that Ansible will install, and their stats

```shell
doas apk info > packages_installed.txt; doas apk stats > package_stats.txt
```

### rofi example

```shell
rofi -combi-modi drun,ssh -theme solarized -font "hack 10" -show combi -show-icons
```

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

```shell
[?25l[?7l[0m[34m[1m       .hddddddddddddddddddddddh.
      :dddddddddddddddddddddddddd:
     /dddddddddddddddddddddddddddd/
    +dddddddddddddddddddddddddddddd+
  `sdddddddddddddddddddddddddddddddds`
 `ydddddddddddd++hdddddddddddddddddddy`
.hddddddddddd+`  `+ddddh:-sdddddddddddh.
hdddddddddd+`      `+y:    .sddddddddddh
ddddddddh+`   `//`   `.`     -sddddddddd
ddddddh+`   `/hddh/`   `:s-    -sddddddd
ddddh+`   `/+/dddddh/`   `+s-    -sddddd
ddd+`   `/o` :dddddddh/`   `oy-    .yddd
hdddyo+ohddyosdddddddddho+oydddy++ohdddh
.hddddddddddddddddddddddddddddddddddddh.
 `yddddddddddddddddddddddddddddddddddy`
  `sdddddddddddddddddddddddddddddddds`
    +dddddddddddddddddddddddddddddd+
     /dddddddddddddddddddddddddddd/
      :dddddddddddddddddddddddddd:
       .hddddddddddddddddddddddh.[0m
[20A[9999999D[43C[0m[1m[34m[1mfak3r[0m@[34m[1mslug[0m 
[43C[0m----------[0m 
[43C[0m[35m[1mOS[0m[0m:[0m Alpine Linux edge x86_64[0m 
[43C[0m[35m[1mHost[0m[0m:[0m MINI S[0m 
[43C[0m[35m[1mKernel[0m[0m:[0m 6.12.13-0-lts[0m 
[43C[0m[35m[1mUptime[0m[0m:[0m 1 day, 6 hours, 36 mins[0m 
[43C[0m[35m[1mPackages[0m[0m:[0m 952 (apk), 24 (flatpak)[0m 
[43C[0m[35m[1mShell[0m[0m:[0m bash 5.2.37[0m 
[43C[0m[35m[1mResolution[0m[0m:[0m 1920x1080[0m 
[43C[0m[35m[1mDE[0m[0m:[0m Xfce 4.20[0m 
[43C[0m[35m[1mWM[0m[0m:[0m Xfwm4[0m 
[43C[0m[35m[1mWM Theme[0m[0m:[0m Default[0m 
[43C[0m[35m[1mTheme[0m[0m:[0m Adwaita [GTK2/3][0m 
[43C[0m[35m[1mIcons[0m[0m:[0m Adwaita [GTK2/3][0m 
[43C[0m[35m[1mTerminal[0m[0m:[0m alacritty[0m 
[43C[0m[35m[1mCPU[0m[0m:[0m Intel Celeron N5095 (4) @ 2.900GHz[0m 
[43C[0m[35m[1mGPU[0m[0m:[0m Intel JasperLake [UHD Graphics][0m 
[43C[0m[35m[1mMemory[0m[0m:[0m 4291MiB / 7729MiB[0m 

[43C[30m[40m   [31m[41m   [32m[42m   [33m[43m   [34m[44m   [35m[45m   [36m[46m   [37m[47m   [m
[43C[38;5;8m[48;5;8m   [38;5;9m[48;5;9m   [38;5;10m[48;5;10m   [38;5;11m[48;5;11m   [38;5;12m[48;5;12m   [38;5;13m[48;5;13m   [38;5;14m[48;5;14m   [38;5;15m[48;5;15m   [m


[?25h[?7h
```
