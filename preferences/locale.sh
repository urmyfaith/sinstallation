################################################################################
#                                   Locale
################################################################################

source './preferences/menu_bar.sh'

function osx_locale_datetime {
  local time_zone="$1"; shift 1;

  sudo sh -c "/usr/sbin/systemsetup -settimezone $time_zone &> /dev/null"
  sudo sh -c "/usr/sbin/systemsetup -setnetworktimeserver 'us.pool.ntp.org' &> /dev/null"
  sudo sh -c "/usr/sbin/systemsetup -setusingnetworktime on &> /dev/null"
}

# Example: en_US
function osx_locale_language {
  local language="$1"; shift 1;

  defaults write NSGlobalDomain AppleLocale "$language"
}

function osx_locale_measurement_unit {
  local unit; if [[ "$1" == "metric" ]]; then unit="Centimeters"; else unit="Inches"; fi
  local enabled; if [[ "$1" == "metric" ]]; then enabled="true"; else enabled="false"; fi

  defaults write NSGlobalDomain AppleMeasurementUnits $unit
  defaults write NSGlobalDomain AppleMetricUnits -bool $enabled
}

function osx_locale_24_hour_clock {
  local enabled;      if [[ "$1" == "enabled" ]]; then enabled="H"; else enabled="h"; fi
  local enabled_bool; if [[ "$1" == "enabled" ]]; then enabled_bool="true"; else enabled_bool="false"; fi

  defaults delete NSGlobalDomain AppleICUTimeFormatStrings > /dev/null 2&>1
  defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "1" "${enabled}:mm"
  defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "2" "${enabled}:mm:ss"
  defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "3" "${enabled}:mm:ss z"
  defaults write NSGlobalDomain AppleICUTimeFormatStrings -dict-add "4" "${enabled}:mm:ss zzzz"
  defaults write NSGlobalDomain AppleICUForce24HourTime   -bool $enabled_bool

  osx_menu_bar_date "E d  ${enabled}:mm"
}

# Set short date to international format.
function osx_locale_international_date_format_strings {
  defaults delete NSGlobalDomain AppleICUDateFormatStrings > /dev/null 2&>1
  defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "1" "yyyy-MM-dd"
  defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "2" "yyyy MMM d"
  defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "3" "yyyy MMMM d"
  defaults write NSGlobalDomain AppleICUDateFormatStrings -dict-add "4" "EEEE yyyy MMMM d"
}
