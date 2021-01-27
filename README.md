# ssh-agent-script.sh

Created: Jan 28, 2021 12:59 AM

Firstly copy ssh-key to the remote machine:

```bash
$ ssh-copy-id user@remoteserver
```

Run script:

```bash
$ chmod +x ssh-agent-script.sh
$ ./ssh-agent-script.sh
```

Check state process:

```bash
$ pgrep ssh-agent
```

if you have a process in the output list, the agent has been started.

Run the script again, for discard process: 

```bash
$ ./ssh-agent-script.sh
```