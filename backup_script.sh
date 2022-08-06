#!/bin/bash
sudo tar -czf /var/backups/mybup.tar.gz /home/pallavi/*.sh
echo "Backup at $(date):" >> /var/tmp/bup.log
