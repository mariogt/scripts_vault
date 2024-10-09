#!/usr/bin/osascript

tell application "Finder"
    make new Finder window to POSIX file (system attribute "PWD")
    activate
end tell
