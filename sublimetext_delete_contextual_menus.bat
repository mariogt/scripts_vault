@echo off

@reg delete "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /f >nul 2>&1
@reg delete "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text" /f >nul 2>&1
     
rem delete it for folders
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text\command" /f >nul 2>&1
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text" /f >nul 2>&1

rem delete it for non admin
@reg delete  "HKEY_CURRENT_USER\Software\Classes\*\shell\Open with Sublime Text\command" /f >nul 2>&1
@reg delete  "HKEY_CURRENT_USER\Software\Classes\*\shell\Open with Sublime Text" /f >nul 2>&1
