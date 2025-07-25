#!/bin/bash

pref_HM="HM"
pref_HmIP="HmIP"
pref_HmIPW="HmIPW"
pref_ELV="ELV"

rm -f run_*
rm -f *.tar.gz
rm -f *.tgz
current_date=`date +%Y-%m-%d-%H-%M-%S`
runfile="run_${current_date}.txt"
touch ${runfile}

ip=$(curl -s https://api.ipify.org)
echo "External IP: $ip" | tee -a ${runfile}

echo "Getting firmware list" | tee -a ${runfile}
output=`curl -s 'https://update.homematic.com/firmware/api/firmware/search/DEVICE' | sed s/'homematic.com.setDeviceFirmwareVersions('/''/ | sed s/');'/''/ |  jq -r '.[] | "\(.type)"'|sort -u`
cnt=`wc -w <<< "$output"|xargs`
i=0
for row in ${output}; do
  i=$((i+1))
  echo -n -e "Downloading firmware file $i of $cnt (${row}).              \r" | tee -a ${runfile}
  printf "\n" >> ${runfile}
  curl -fsSLOJ  "https://ccu3-update.homematic.com/firmware/download?cmd=download&serial=0&product=${row}"
done
echo "" | tee -a ${runfile}
echo "Moving files into directories" | tee -a ${runfile}
# Use an array to track latest device models
latest_models=()
for f in *gz; do
  pref=`ls $f|awk -F'[-_]' {'print $1'}`
  
  case $pref in
    ([Hh][Mm])             pref=$pref_HM;;
    ([Hh][Mm][Ii][Pp])     pref=$pref_HmIP;;
    ([Hh][Mm][Ii][Pp][Ww]) pref=$pref_HmIPW;;
    ([Ee][Ll][Vv])         pref=$pref_ELV;;
  esac
  
  #parse info file
  infofile=`tar -ztf $f|grep info||true`
  if [ -z "$infofile" ]; then
    echo "$f has no info file" | tee -a ${runfile}
  else
    tar -zxf $f info
    fwversion=`grep "FirmwareVersion=" info|cut -d "=" -f 2`
    fwversion=${fwversion//[$'\n\r']/}
    fwdevicename=`grep "Name=" info|cut -d "=" -f 2`
    fwdevicename=${fwdevicename//[$'\n\r']/}
    if [ -n "$fwdevicename" ]; then
      latest_models+=("$fwdevicename")
    fi
  fi

  #parse changelog
  changelog=`tar -ztf $f|grep changelog.txt||true`
  if [ -z "$changelog" ]; then
    echo "$f has no changelog.txt" | tee -a ${runfile}
  else
    tar -zxf $f changelog.txt
    iconv -f ISO-8859-1 -t UTF-8 changelog.txt > ./docs/changelogs/changelog_${f%%.*}.md
    rm changelog.txt
    # Append to index temp file only if not already present
    grep -qxF "| ${fwdevicename} | [V${fwversion}](changelogs/changelog_${f%%.*}.md) |" ./docs/_index.md.tmp.$pref || \
      echo "| ${fwdevicename} | [V${fwversion}](changelogs/changelog_${f%%.*}.md) |" >> ./docs/_index.md.tmp.$pref
  fi
  
  [ ! -d $pref ] && mkdir $pref
  mv $f $pref/
  
done
[ -f "info" ] && rm info

# Rebuild index temp files from all changelogs for all folders
for folder in "$pref_ELV" "$pref_HM" "$pref_HmIP" "$pref_HmIPW"; do
  for f in $folder/*.{tgz,tar.gz}; do
    [ -e "$f" ] || continue
    pref=`basename $f|awk -F'[-_]' {'print $1'}`
    case $pref in
      ([Hh][Mm])             pref=$pref_HM;;
      ([Hh][Mm][Ii][Pp])     pref=$pref_HmIP;;
      ([Hh][Mm][Ii][Pp][Ww]) pref=$pref_HmIPW;;
      ([Ee][Ll][Vv])         pref=$pref_ELV;;
    esac
    # parse info file
    infofile=`tar -ztf $f|grep info||true`
    if [ -z "$infofile" ]; then
      continue
    fi
    tar -zxf $f info
    fwversion=`grep "FirmwareVersion=" info|cut -d "=" -f 2`
    fwversion=${fwversion//[$'\n\r']/}
    fwdevicename=`grep "Name=" info|cut -d "=" -f 2`
    fwdevicename=${fwdevicename//[$'\n\r']/}
    changelogfile="./docs/changelogs/changelog_${f##*/}"
    changelogfile=${changelogfile%%.*}.md
    if [ -f "$changelogfile" ]; then
      grep -qxF "| ${fwdevicename} | [V${fwversion}](${changelogfile#./docs/}) |" ./docs/_index.md.tmp.$pref || \
        echo "| ${fwdevicename} | [V${fwversion}](${changelogfile#./docs/}) |" >> ./docs/_index.md.tmp.$pref
    fi
    [ -f "info" ] && rm info
  done
done

#Build final index.md file
generation_time=`date +'%d.%m.%Y, %H:%M:%S Uhr'`
echo "## Homematic Device Firmware Changelogs"    > ./docs/index.md
echo ""                                          >> ./docs/index.md
echo "_last generated: ${generation_time}_"      >> ./docs/index.md
echo ""                                          >> ./docs/index.md
declare -a pref_arr=($pref_HmIP $pref_HmIPW $pref_ELV $pref_HM)
for i in "${pref_arr[@]}"
do
  echo "<details open><summary>$i</summary>"     >> ./docs/index.md
  echo ""                                        >> ./docs/index.md
  echo "| Device Model | Version |"              >> ./docs/index.md
  echo "| ------------- |:-------------:|"       >> ./docs/index.md
  while IFS= read -r idxline; do
    model=$(echo "$idxline" | awk -F'|' '{print $2}' | sed 's/^ *//;s/ *$//')
    for latest in "${latest_models[@]}"; do
      if [ "$model" = "$latest" ]; then
        idxline=$(echo "$idxline" | sed "s/^| \([^|]*\) |/| **\1** |/")
        break
      fi
    done
    echo "$idxline" >> ./docs/index.md
  done < <(cat ./docs/_index.md.tmp.$i | sort)
  echo "</details>"                              >> ./docs/index.md
done
echo "Done." | tee -a ${runfile}
