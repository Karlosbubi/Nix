# Nix
My (currently not so Nix) Configuration and dotfiles

## Use Setup

While taylored to my personal use, it's here and you can use it if our tastes align.
Of course you need to provide your own GPG and SSH keys and place them in the `Setup/data/gpg` and `Setup/data/ssh` respectively.
I've also started extracting personal info into an `Setup/scripts/env.bash` that you need to fill in.

```bash
# For git config 
export $GIT_NAME="Your (user-)name"
export $GIT_MAIL="Your E-Mail"
export $GIT_KEY="Commit Signing key Fingerprint"
```
