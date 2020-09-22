# Checkra1n-linux
Checkra1n is a community project to provide a high-quality semi-tethered jailbreak to all, based on the ‘checkm8’ bootrom exploit. This jailbreak tool will work to any Pre-A12 Devices running iOS 12 up to the latest iOS 14. 

However, it is to be noted that the support for iOS 14 is only available for A9 Devices and below. You can go to their [official website](https://checkra.in/) for more information about this jailbreak tool.

## Debian
You can install Checkra1n the through their repository by adding it in to your system with the following commands
```
echo "deb https://assets.checkra.in/debian /" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
sudo apt update
sudo apt install checkra1n
```

## Other Linux Distribution
You can download the CLI version of Checkra1n from their website manually. But it can be quite cumbersome. So for the ease of installation, you can just use the install script
```
sh install.sh
```