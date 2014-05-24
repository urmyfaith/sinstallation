source './profiles/jfelchner/apps.sh'
source './profiles/jfelchner/preferences.sh'
source './profiles/jfelchner/login_items.sh'
source './profiles/jfelchner/cleanup.sh'

install_apps
set_preferences
add_login_items

wget -O "$HOME/Library/Application Support/KeyRemap4MacBook/private.xml" "https://gist.githubusercontent.com/msolomon/9614362/raw/3b156d8cd9c006941f28a77fc193b29599377ab9/private.xml"

cleanup