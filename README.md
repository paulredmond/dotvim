dotvim
======

My vim setup - just starting to learn/use vim

ctags
-----

For Mac OS, install via homebrew

```sh
brew install ctags
```

On a project, generate the tags with something similar to:

```sh
ack -f --php | /opt/boxen/homebrew/bin/ctags -L -
```

