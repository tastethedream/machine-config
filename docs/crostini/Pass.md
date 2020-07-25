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


## ChromeOS Clipboard

10. Edit the bash file /usr/bin/pass
On ChromeOS the clipboard wont allow xclip to copy content. 
```
sudo vi /usr/bin/pass
```

11. Rename the exisiting clip function to clip2()
```
clip2() {
        # This base64 business is because bash cannot store binary data in a shell
        # variable. Specifically, it cannot store nulls nor (non-trivally) store
        # trailing new lines.
        local sleep_argv0="password store sleep on display $DISPLAY"
        pkill -f "^$sleep_argv0" 2>/dev/null && sleep 0.5 
        local before="$(xclip -o -selection "$X_SELECTION" 2>/dev/null | $BASE64)"
        echo -n "$1" | xclip -selection "$X_SELECTION" || die "Error: Could not copy data to the clipboard"
        (   
                ( exec -a "$sleep_argv0" bash <<<"trap 'kill %1' TERM; sleep '$CLIP_TIME' & wait" )
                local now="$(xclip -o -selection "$X_SELECTION" | $BASE64)"
                [[ $now != $(echo -n "$1" | $BASE64) ]] && before="$now"

                # It might be nice to programatically check to see if klipper exists,
                # as well as checking for other common clipboard managers. But for now,
                # this works fine -- if qdbus isn't there or if klipper isn't running,
                # this essentially becomes a no-op.
                #   
                # Clipboard managers frequently write their history out in plaintext,
                # so we axe it here:
                qdbus org.kde.klipper /klipper org.kde.klipper.klipper.clearClipboardHistory &>/dev/null

                echo "$before" | $BASE64 -d | xclip -selection "$X_SELECTION"
        ) >/dev/null 2>&1 & disown
        echo "Copied $2 to clipboard. Will clear in $CLIP_TIME seconds."
}
```

12. Add the following code as a new clip function
```
clip() {
        # Ref: https://medium.com/free-code-camp/tmux-in-practice-integration-with-system-clipboard-bcd72c62ff7b
        set -eu
        # get data either from stdin or from file
        buf=$(echo "$1")
        # Get buffer length
        buflen=$( printf %s "$buf" | wc -c )
        maxlen=74994
        # warn if exceeds maxlen
        if [ "$buflen" -gt "$maxlen" ]; then
          printf "input is %d bytes too long" "$(( buflen - maxlen ))" >&2 
        fi  

        # Ref: https://github.com/kovidgoyal/kitty/issues/995
        # Remove contents of the buffer and add selection
        # build up OSC 52 ANSI escape sequence
        printf "\033]52;c;$(printf $buf "" | base64)\a"
}
```

13. Quit Vi
Press the Esc key. Then enter
```
wqa
```
