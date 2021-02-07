# First Time Connection Setup #

When Whonix starts for the first time, it won't automatically connect to the
public Tor network. This is useful for users who want to hide Tor from their
ISP. setup-dist is automatically started, which educates about different
methods to connect (public Tor network, bridges, etc.).

Also automatically starts the Whonix Repository Tool (if installed), so the
user can decide whether to use Whonix's Repository and if yes, choose which
one.
## How to install `setup-dist` using apt-get ##

1\. Download Whonix's Signing Key.

```
wget https://www.whonix.org/patrick.asc
```

Users can [check Whonix Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key) for better security.

2\. Add Whonix's signing key.

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/derivative.gpg add ~/patrick.asc
```

3\. Add Whonix's APT repository.

```
echo "deb https://deb.whonix.org buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/derivative.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `setup-dist`.

```
sudo apt-get install setup-dist
```

## How to Build deb Package from Source Code ##

Can be build using standard Debian package build tools such as:

```
dpkg-buildpackage -b
```

See instructions. (Replace `generic-package` with the actual name of this package `setup-dist`.)

* **A)** [easy](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package/easy), _OR_
* **B)** [including verifying software signatures](https://www.whonix.org/wiki/Dev/Build_Documentation/generic-package)

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Professional Support](https://www.whonix.org/wiki/Professional_Support)

## Donate ##

`setup-dist` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
