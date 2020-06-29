# Unifi Controller

* Format memory card - debian

* Once formatted - remount the memory card

/media/[user]boot
/media/[user]rootfs


## Boot volume

On the boot volume i.e. /media/[user]/boot

```
touch ssh
```


## Rootfs volume

On the rootfs (Root filesystem) volume i.e. /media/[user]/rootfs

```
cd etc
```

Edit the hostname file
```
sudo vi hostname
```

Amend the name to something unique


Edit the hosts file
```
sudo vi hosts
```

Change the host - 127.0.0.1 value to match what was put in the hostname file



## Connecting to RPi

* Connect to the RPI over the network
ssh pi@[ip address]


Username: pi
Password: raspberry

Update the RPi

```
sudo apt update && sudo apt dist-upgrade
```


## Download Unifi Controller


SSH to the RPi
```
ssh pi@[ip_address]
```

Go to [Unifi Website](https://www.ui.com/download/unifi/)

Access the Unifi Network Controller - Debian/Ubuntu and Unifi Cloud Key

Copy the download URL


Download the software
```
sudo curl [unifi-software-url] -o /tmp
```

Install the software packages
```
sudo apt get mongodb-server openjdk-8-jre-headless openjdk-8-jdk jsvc libcommons-daemon-java
```


Install the unfi software

```
sudo      dpk  g -i [path/software]
```

Confirm the status of the unifi service (i.e. Active)

```
sudo service unifi status
```


## Connecting to Unfi

Open Browser and navigate to the IP address of the Rpi

```
https://IP_ADDRESS:8443
```

You can now config the Unfi Controller!

