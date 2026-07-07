ls -la .git/shallow

 #!/bin/bash
echo 'repo() { if [ "$1" = "init" ]; then shift; command repo init --depth=1 "$@"; else command repo "$@"; fi; }' >> ~/.bashrc
. ~/.bashrc
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs

ls -la .git/shallow

