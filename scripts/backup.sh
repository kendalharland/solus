set -e

BACKUP_ROOT=$HOME/Dropbox/home
BACKUP_CONFIG=$HOME/.config/.backupconfig

IFS=$'\r\n' GLOBIGNORE='*' command eval 'PATHS=$(<$BACKUP_CONFIG)'

mkdir -p $BACKUP_ROOT
cp -r ${PATHS[@]} $BACKUP_ROOT
