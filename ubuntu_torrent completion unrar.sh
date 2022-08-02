
#!/bin/bash
cd /root/complete &&
find . -name "*.rar" -exec unrar x -o- {} /root/complete \; &&
find -type f -name '*sample*' -delete &&
find . -name '*.mkv' -exec mv --target-directory='/home/ekofisk/EKO/Hetzner' '{}' + &&
find . -name '*.mp4' -exec mv --target-directory='/home/ekofisk/EKO/Hetzner' '{}' + &&
find . -name '*.avi' -exec mv --target-directory='/home/ekofisk/EKO/Hetzner' '{}' + &&
rm -rf $4 &&
rm -rf /home/ekofisk/.insync-trash/