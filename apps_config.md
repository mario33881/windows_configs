# Applications configuration

> NOTE: make sure that all the config files have correct paths (correct drive, correct user, ...).

## Windows

### Disable suspend

Disable computer suspend: avoid the risk of blocking long downloads/installs/scripts.

### Disable system sounds

Disable system sounds by opening the audio mixer and setting its volume to zero.

### Wallpaper

Set the [wallpaper](configs/user/wallpaper.png).

### Night light

Enable night light to reduce the amount of blue light emitted by the screen at night time.

## Conda

To initialize conda when you open powershell, run the following command:

```powershell
conda init
```

## Powershell

Run the following command to check where the configuration files are located:

```powershell
$profile | select *
```

Copy the configuration inside the [WindowsPowerShell](configs/user/Documents/WindowsPowerShell) folder into one of the configuration files.

These scripts are run when powershell starts. It setups powershell to:

- use fzf and psfzf when pressing Ctrl+r to search in the commands history
- initialize zoxide. Use the z command to traverse paths instead of cd
- initialize conda to manage python environments
  > Use the `conda init` command to add the conda initialization code inside your configuration.

## GIT

Setup the credentials manager, the email and the username:

```powershell
git config --global credential.helper manager

git config --global user.name <username>
git config --global user.email <email>

git config --global core.autocrlf false
git config --global core.eol lf
```

The first time the credential helper window appears, choose "manager" and "always use this option".

### Signing commits for GitHub

1. Create a [GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
2. [Add the key](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account) to your GitHub account
3. [Tell git](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key) to use your key

If you get the "no secret key" error, you might need to tell git where the gpg executable is located with:

```powershell
git config --global gpg.program "<path_to_gpg_root_dir>\bin\gpg.exe"
```

## JetBrains IDEs

- Install ideavim plugin (which also works for Webstorm, CLion, ...)
  > Alternative: login with your account and enable the "Backup and sync" option
- Place the [.ideavimrc](configs/user/.ideavim) file inside your users folder (`C:\users\<username>`)

Favourite shortcuts:

- gd: go to definition
- gb: go back to previous position
- gf: go forward
- space + e: go to next error
- space + i: show implementation of hovered function
- space + s: show definition of hovered function

## Backups

Backups are scheduled to run automatically on every saturday at around 18:30.

- Put the [profiles.toml](configs/user/profiles.toml) file inside your user folder (`C:\users\<username>`)
- Create a `password.txt` file inside your user folder: this password file content is used to encrypt the backups
- Create 4 batch scripts inside your user folder:
  - `restic_bk_fail.bat`: executed by resticprofile if the backup process fails
    > I use this script to send an error message to my phone via Telegram
  - `restic_bk_before.bat`: executed by resticprofile before starting the backup process
    > I use this script to send a "starting backup process" message to my phone via Telegram
  - `restic_bk_after.bat` : executed by resticprofile after the backup process ends successfully
    > I use this script to send a "backup successful" message to my phone via Telegram
  - `restic_bk_alert_before.bat`: executed by Windows Task Scheduler 10 minutes before the backup starts
    > I use this script to send a "remember to plug-in the external HDD, backup will start in 10 minutes" message to my phone via Telegram
- Setup the Windows Task Scheduler to run the restic backup:

  ```powershell
  resticprofile schedule --all
  ```

- Setup the Windows Task Scheduler to alert you 10 minutes before the backup starts: it needs to call the `restic_bk_alert_before.bat` script.

My batch scripts contain one command:

```batch
curl -fsS --retry 3 "https://api.telegram.org/<bot_api_key>/sendMessage?chat_id=<your_users_chat_id>&text=<message>"
```

> Replace `<bot_api_key>`, `<your_users_chat_id>`, `<message>` acoordingly (use `%%20` to encode spaces in your text message).

## WSL

Prerequisites:

- install fzf: ```sudo apt install fzf```

Put the [.profile](configs/wsl/user/.profile) file inside your home directory.

This file defines the following commands:

- fe: use fzf to search for a file and open it with the default editor
- fd: use fzf to search for a directory and cd to it
- fman: use fzf to search inside the manual pages and open the selected page

And defines the following hotkeys:

- Ctrl+r: use fzf to search for a command in the command history

## Docs navigation

[< Applications](applications.md)
