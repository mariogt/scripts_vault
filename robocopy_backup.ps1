# updated on 24-09-2024

# first we export winget list of apps installed on dev machine
winget export -o X:\winhacks\winget_exported.xml

# copy windows terminal prefs
robocopy "C:\Users\mario\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\" "X:\Users\mario\backups" /mir /z /sl /sj

# copy home
robocopy "C:\Users\mario\" "X:\home\" /b /mir /z /sl /sj /xd `
  "C:\Users\mario\.aws" `
  "C:\Users\mario\.azure" `
  "C:\Users\mario\.continue" `
  "C:\Users\mario\.gradle" `
  "C:\Users\mario\.ipython" `
  "C:\Users\mario\.openjfx" `
  "C:\Users\mario\.docker" `
  "C:\Users\mario\.cache" `
  "C:\Users\mario\.cargo" `
  "C:\Users\mario\.rustup" `
  "C:\Users\mario\.ipython" `
  "C:\Users\mario\.eclipse" `
  "C:\Users\mario\.p2" `
  "C:\Users\mario\.dotnet" `
  "C:\Users\mario\.templateengine" `
  "C:\Users\mario\.thumbnails" `
  "C:\Users\mario\.VirtualBox" `
  "C:\Users\mario\.vscode" `
  "C:\Users\mario\Objetos 3D" `
  "C:\Users\mario\ansel" `
  "C:\Users\mario\OneDrive\Microsoft Edge Drop Files" `
  "C:\Users\mario\Configuración local" `
  "C:\Users\mario\AppData\Local" `
  "C:\Users\mario\AppData\LocalLow" `
  "C:\Users\mario\AppData\Roaming\Adobe" `
  "C:\Users\mario\AppData\Roaming\Microsoft" `
  "C:\Users\mario\AppData\Roaming\EasyAntiCheat" `
  "C:\Users\mario\AppData\Roaming\NuGet" `
  "C:\Users\mario\AppData\Roaming\NVIDIA" `
  "C:\Users\mario\AppData\Roaming\Unity Hub" `
  "C:\Users\mario\AppData\Roaming\UnityHub" `
  "C:\Users\mario\AppData\Roaming\Mozilla" `
  "C:\Users\mario\AppData\Roaming\vlc" `
  "C:\Users\mario\AppData\Roaming\AMD" `
  "C:\Users\mario\AppData\Roaming\Affinity" `
  "C:\Users\mario\AppData\Roaming\Visual Studio Setup" `
  "C:\Users\mario\AppData\Roaming\Telegram Desktop" `
  "C:\Users\mario\AppData\Roaming\Sublime Text" `
  "C:\Users\mario\AppData\Roaming\Blender Foundation" `
  "C:\Users\mario\AppData\Roaming\blender-benchmark-launcher" `
  "C:\Users\mario\AppData\Roaming\discord" `
  "C:\Users\mario\AppData\Roaming\Maxon" `
  "C:\Users\mario\AppData\Roaming\Docker" `
  "C:\Users\mario\AppData\Roaming\Docker Desktop" `
  /xf `
  ".DS_Store" `
  ".lock" `
  NTUSER.* `
  ntuser.*

# copy dosbox conf folder
robocopy "C:\Users\mario\AppData\Local\DOSBox" "X:\home\AppData\Local\DosBox" /mir /z /sl /sj

# copy dev folder
robocopy "X:\dev" "Z:\dev\" /mir /z /sl /sj

# copy emulators folder
robocopy "X:\emulators" "Z:\emulators\" /mir /z /sl /sj

# copy vms folder
robocopy "X:\vms" "Z:\vms\" /mir /z /sl /sj /xd *.lck

# copy peliculas folder from nas
robocopy "X:\peliculas" "Z:\peliculas"	/mir /z /sl /sj
