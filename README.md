# dotfiles

## New Machine

If this is a new machine, copy `setup.sh` to your machine and run it in the user home directory. This will pull this repo after setting up brew and installing and authenticating with github.

## Update

Then from the `~/dotfiles` folder, run `./update.sh`, which will set the rest up.

## XCode

(Do above steps, then clone `app`, then run xcodegen from the apple folder.)

XCode must be set up through the app store. Load it there, and then open an XCode project above.

Then activate with `xcode-select install`.

Finally make sure swift is loaded with:

```shell
sudo xcode-select -s /Applications/XCode.app/Contents/Developer
```

Now you should be able to run any swift or XCode project:

```shell
just cs
```

### XCode Keybindings

Follow [these instructions](https://gist.github.com/hoishing/2b024e625024e5b409f0bb5941688375) to set up keybindings.