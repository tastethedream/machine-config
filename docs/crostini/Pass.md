# Pass Installation

## Configuration

[password store](https://www.passwordstore.org/)
[definitive guide to password](https://medium.com/@chasinglogic/the-definitive-guide-to-password-store-c337a8f023a1)

1. Install the package
```
sudo apt install pass
```

2. Generate a GPG key for the password
* Need to remember the password used for GPG as this will be used to access the password-store

```
gpg --full-gen-key
```

Note use the following config:
* RSA
* Key Size (3072)
* Key lifespan (0) i.e. does not expire


3. Initialise git

```
git config --global user.name “github username”
git config --global user.email “github email address”
```

4. Initialise the password-store
```
pass init [email address]
```

5. Initialise git repo for password-store
```
pass git init
```

6.  Insert a password e.g. store a github token
```
pass insert github
```
When prompted for a password - add the secret to be stored

## General Usage

7. Retrieve a secret from the command line
```
pass github
```

8. Retrieve a secret to the clipboard
```
pass -c github
```

9. Delete a secret
```
pass rm github
```

