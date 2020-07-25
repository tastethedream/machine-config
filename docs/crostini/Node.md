# Node Installation 


## Configuration

Check out the available NodeJS distributions. Download the application from the NodeJS repository e.g..
```
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
```

Run the script to install Node
```
sudo bash nodesource_setup.sh
```

Follow the onscreen instructions:
```
sudo apt-get install -y nodejs
```

Install Yarn
```
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
     sudo apt-get update && sudo apt-get install yarn
```


It may be necessary to install additional packages 
```
apt install build-essential
```

Dependencies: 
```
sudo apt-get install libssl-dev
```

## Test Installation

Confirm the install of NodeJS by checking the version
```
node -v
```
Confirm the installation of the npm package manager
```
npm -v 
```


## Development

```
npm init --yes
```


