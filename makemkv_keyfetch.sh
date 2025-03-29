# inspired by: https://pastebin.com/vafpYkfa
# and: https://wiki.indie-it.com/wiki/MakeMKV
# 
# add to crontab for weekly execution:
# @weekly /path/to/makemkv_keyfetch.sh

betakey=$(lynx -dump -nonumbers -nolist "http://www.makemkv.com/forum2/viewtopic.php?f=5&t=1053" | awk '/Code: Select all/{getline; print}')

if [ -n "${betakey}" ]; then
        echo ""
        echo "Current MakeMKV Beta Key: ${betakey}"
        cd ~/.MakeMKV/
        sed -i "s/^app_Key=.*/app_Key=${betakey}/" settings.conf
        echo "----------------------------------------------------------------------------------------------"
        echo "Key successfully updated."
        echo ""
else
        echo "Could not find BETAKEY."
fi

