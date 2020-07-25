# Unifi Controller

* Format memory card - debian - use raspbian with desktop (you need gui to login to console)

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
```
ssh pi@[ip address]
```

Username: pi
Password: raspberry

Update the RPi

```
sudo apt update && sudo apt dist-upgrade
```

Confirm Desktop setting requires login
```
sudo raspi-config
```


# Amend the default user acccount

1. List pi user permissions
```
groups pi
```

2. Create new user with PI permissions
```
sudo useradd -m -G adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,netdev,spi,i2c,gpio [USERID]
```

3. Set the new user Password
```
sudo passwd [USERID]
```

4. Reboot the Raspberry pi
```
sudo shutdown -r now
```

5. Login with new user
```
ssh [USERID]@[IP Address]
```

6. Delete the default 'pi' user
```
sudo deluser pi
```


## Download Unifi Controller


SSH to the RPi
```
ssh [USERID]@[ip_address]
```

Go to [Unifi Website](https://www.ui.com/download/unifi/)

Access the Unifi Network Controller - Debian/Ubuntu and Unifi Cloud Key

Copy the download URL


Download the software
```
curl -o [FILENAME] [unifi-software-url] 
```

Install the software packages
```
sudo apt install -y mongodb-server openjdk-8-jre-headless openjdk-8-jdk jsvc libcommons-daemon-java
```

Install the unfi software
```
sudo dpkg -i [path/software]
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

