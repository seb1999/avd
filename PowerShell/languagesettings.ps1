Set-TimeZone -Id "AUS Eastern Standard Time"
Set-Culture en-AU
Set-WinSystemLocale -SystemLocale en-AU
Set-WinUILanguageOverride -Language en-AU
Set-WinUserLanguageList en-AU -Force
Set-WinHomeLocation -GeoId 12

shutdown -r -f -t 00