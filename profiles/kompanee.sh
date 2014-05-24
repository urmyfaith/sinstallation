source './ruby.sh'
source './node.sh'
source './profiles/kompanee/apps.sh'
source './profiles/kompanee/directories.sh'
source './profiles/kompanee/preferences.sh'
source './profiles/kompanee/login_items.sh'
source './profiles/kompanee/security.sh'

install_ruby
install_node
install_apps
create_directory_structure
set_preferences
add_login_items
secure
