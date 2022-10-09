Set-WinSystemLocale -SystemLocale en-AU
Set-TimeZone -Id "AUS Eastern Standard Time"
Set-WinUserLanguageList -LanguageList "en-AU" -Force
shutdown -r -f -t 00