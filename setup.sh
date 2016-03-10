#!/usr/bin/env bash


if [ ! -f "/.cron-updated" ]; then

  # randomize minute and hour of cron jobs for so that each container on the host is different
  for i in hourly daily weekly monthly; do 
    sed -i "/$i/ s/^[0-9]\+/$(echo $((RANDOM%60)))/;
      /$i/ s/^\([0-9*]\+\) \+[0-9]\+/\1 $(echo $((RANDOM%24)))/" /etc/crontab; 
  done

  # disable all but daily crontab
  sed -i '/cron.\(hour\|week\|month\)ly/ s/^/#/' /etc/crontab

  # disable all daily cronjobs except logrotate
  chmod -x /etc/cron.daily/*
  chmod +x /etc/cron.daily/logrotate

  : > "/.cron-updated"

fi

if [ "${SETUP_SCRIPT}" != "" ]; then
  if [ -x "${SETUP_SCRIPT}" ]; then
     exec "${SETUP_SCRIPT}" &
  else 
    echo "${SETUP_SCRIPT} is not an executable file" 
  fi
fi
