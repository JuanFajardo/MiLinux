# Comanddos par APT en debian


## Bloqueo /var/lib/dpkg/lock

```bash
# fuser -vki  /var/lib/dpkg/lock[/code]

# rm -f /var/lib/dpkg/lock[/code]

# dpkg –configure –a[/code]

# apt-get autoremove[/code]

```
