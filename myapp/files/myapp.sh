#!/bin/bash
while true; do
  echo "MyApp is running... $(date)" >> /var/log/myapp.log
  sleep 10
done

