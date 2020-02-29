Tips
---


### Disable UTC and use Local Time in Ubuntu:

```
timedatectl set-local-rtc 1 --adjust-system-clock
sudo hwclock --localtime --systohc
```
