## Workspaces bash util
Allows to setup env vars, aliases and other bash stuff
and bind it to isolated workspaces which easy to switch 
just in one command.

### Installation
1. Install zsh (required at the moment)
2. Clone the repo
3. Add to your `.bashrc`/`.bash_profile` 
```
source /path/to/workspaces/main.sh
```

### Commands
After "installation" =) you'll be able to get new terminal commands:

```
➜ wshelp

available commands:

-- wsadd {WORKSPACE}
creates new empty workspace

-- wsremove {WORKSPACE}
removes existing workspace

-- wsswitch {WORKSPACE}
switches workspace

-- wsdeactivate
deactivates workspace and reloads terminal

-- wsshow
shows all available workspaces

-- wshelp
shows help
```


### To do
1. Add commands: `exit`, `reload`
2. Add `config` file, allow to set terminal (bash/zsh) and update installation guide
3. Resolve relative parts in console logs
