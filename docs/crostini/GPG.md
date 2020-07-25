# GPG Installation

## Configuration

1. Generate a key

```
gpg --full-generate-key
```

## Exchange Keys
2. Export a public key

```
gpg --export [username] > my-public-key.gpg
```

3. Import a Public key
```
 gpg --import my-public-key.gpg
 ```


