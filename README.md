# Virtual Display Tool

## Usage

```bash
sudo virtualdipplay WIDTH HEIGHT VID

#Exampe
sudo virtualdipplay 1920 1080 1
```

## Installation

```bash
sudo cp configs/20.intel.conf /usr/share/X11/xorg.conf.d/20-intel.conf
sudo cp scripts/virtualdisplay.sh /usr/local/bin/virtualdisplay
sudo chmod 0775 /usr/local/bin/virtualdisplay
```
