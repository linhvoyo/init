#!bin/bash
set -e pipefail

echo -e "V.2: NETWORK\n"
for i in {01..16}
  do
    echo -e /network/$i "\n"
    if ([ $i -ge 01 ] && [ $i -le 05 ]) || [ $i == 07 ] || [ $i == 10 ] ||\
        [ $i == 12 ] ; then
      echo -e "COMMAND: " "$(cat /data/network/$i)" "\n"
      chmod +x /data/network/$i && /data/network/$i
    elif [ $i == 06 ] || [ $i == 08 ] || [ $i == 09 ] ||[ $i == 11 ] || \
        ([ $i -ge 13 ] && [ $i -le 16 ]); then
      cat /data/network/$i
    fi
    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
  done

echo -e "\nV.3: SYSTEM\n"
for i in {01..19}
  do
    echo -e /system/$i "\n"
    if [ $i == 02 ] || [ $i == 04 ] || ([ $i -ge 06 ] && [ $i -le 07 ]) || [ $i == 09 ] || \
    [ $i == 11 ] || [ $i == 12 ] || [ $i == 17 ] || [ $i == 18 ] || [ $i == 19 ]; then
      echo -e "COMMAND: " "$(cat /data/system/$i)" "\n"
      chmod +x /data/system/$i && /data/system/$i
      if [ $i == 18 ] || [ $i == 19 ]; then /data/system/17; fi
    elif [ $i == 01 ] || [ $i == 03 ] || [ $i == 08 ] || [ $i == 16 ] ; then
      cat /data/system/$i
    elif [ $i == 05 ] || [ $i == 10 ] || ([ $i -ge 13 ] && [ $i -le 15 ]) ; then
      echo -e "COMMAND: " "$(cat /data/system/$i)" "\n"
      if [ $i == 10 ]; then fdisk -l; fi
    fi
    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
  done

echo -e "\nV.4: SCRIPTS\n"
for i in {01..05}
  do
    echo -e /scripts/$i "\n"
    echo -e "SCRIPT: " "$(cat /data/scripts/$i)" "\n"
    chmod +x /data/scripts/$i && /data/scripts/$i
    if [ $i == 02 ] ; then
      crontab -l
    fi
    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
  done
