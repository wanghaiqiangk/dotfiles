# Forwarding Proxy Service

## Prerequisites

- Forwarding proxy server (e.g. squid, nginx)
- openssh
- autossh

## Encrypted Communication

Some proxy servers do not or can not easily provide safe, encrypted networking
transportation. Thus, any data through the proxy server are exposed to interception.

One way to avoid such risk is to establish a tunnel between end points. Good
thing is that this can be accomplished via a commonly used protocol `openssh`.

An illustration is

```shell
$ ssh -fCNL 1234:127.0.0.1:4321 root@1.2.3.4 -i $HOME/.ssh/1.2.3.4_rsa
```

This means all data, if transferred through your local's 1234 port, will be forwared
to remote's 4321 port. And if the 4321 is connected with a proxy server, then your
requests will be delegated to this agency.

## Startup

Everytime you boot your PC, you need to invoke the command above. But you can simplify
the preparation job by making the establishment of tunneling automatically
started at startup.

The sample script is [forwarding_proxy.service](./forwarding_proxy.service), which is
managed by `systemd`. A nuance is, instead of `ssh`, the command becoming `autossh`.
In such way, the stability of tunneling is in the charge of `autossh`. It will retry to
connect to proxy server for serverl times if disconnection occurs.

## Usage

Many applications, such as web browser, terminal, apt, etc. can be configured to use
proxy. Just look around to find out how to enable this functionality.
