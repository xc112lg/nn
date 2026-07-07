cat .repo/manifests.git/config
rm -rf .repo/manifests
rm -rf .repo/manifests.git/config
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
cat .repo/manifests.git/config

echo 'repo() { if [ "$1" = "init" ]; then shift; command repo init --depth=1 "$@"; else command repo "$@"; fi; }' >> /home/admin/.bash_aliases
source /home/admin/.bash_aliases
cat /home/admin/.bash_aliases
repo init -u https://github.com/LineageOS/android.git -b lineage-22.2 --git-lfs

cat .repo/manifests.git/config

# repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs --depth 1
# cat .repo/manifests.git/config
