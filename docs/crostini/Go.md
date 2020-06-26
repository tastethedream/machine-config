# Go Installation


## Configuration

Download the go package - Visit https://golang.org/dl/

```
wget [go-version.tar.gz]
```

Install the package into /usr/local
```
sudo tar -C /usr/local -xzf [go-version.tar.gz]
```

Update the profile setting to add the installation directory to the path
```
vi ~/.profile
```

Add the following configuration at the bottom of the .profile file

```
# set PATH so it includes go installation if it exists
if [ -d "/usr/local/go/bin" ] ; then
#    export GOPATH=$HOME/go
    PATH="/usr/local/go/bin:$PATH"
fi
```


Activate the updated settings
```
source ~/.profile
```

Check the installation matches the installation version
```
go version
```

## Development setup

__Note:__ go expects source to be located in `~/go`. If you want to alter this, the `gopath` environment variable needs to be amended.

Make the go home directory
```
mkdir -p ~/go/src
```

## Test program - hello.go

Make a program subdirectory
```
mkdir -p ~/go/src/hello
```

Create a hello.go program using editor e.g.
```
vi hello.go
```

Add the following code to hello.go

```
package main

import "fmt"

func main() {
    fmt.Printf("hello, world\n")
}
```

Build the hello.go application
```
go build
```

Run the code hello application
```
./hello
```
