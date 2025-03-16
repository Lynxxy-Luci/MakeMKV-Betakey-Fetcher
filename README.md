# MakeMKV Betakey Fetcher
Small bash script to continuously fetch and install the current MakeMKV Beta Key from the [MakeMKV Forum](https://forum.makemkv.com/forum/viewtopic.php?f=5&t=1053).
For continuous execution, add it to your crontab, e.g.

```bash
EDITOR=nano crontab -e
#crontab
@weekly ~/.scripts/makemkv_keyfetch.sh
```

More information:
https://wiki.indie-it.com/wiki/MakeMKV
