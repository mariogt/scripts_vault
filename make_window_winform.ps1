Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
# $wshell = New-Object -ComObject Wscript.Shell
# $Button = [System.Windows.MessageBoxButton]::YesNoCancel
# $ErrorIco = [System.Windows.MessageBoxImage]::Error

$Form = New-Object system.Windows.Forms.Form
$Form.ClientSize = New-Object System.Drawing.Point(1050, 1000)
$Form.text = "Madafaka"
$Form.StartPosition = "CenterScreen"
$Form.TopMost = $false
$Form.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#000000")
$Form.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#ff00ff")
$Form.AutoScaleDimensions = '192, 192'
$Form.AutoScaleMode = "Dpi"
$Form.AutoSize = $True
$Form.AutoScroll = $True
$Form.FormBorderStyle = 'FixedSingle'

$Form.Width = 500
$Form.Height = 500

$Panel1 = New-Object system.Windows.Forms.Panel
$Panel1.height = 500
$Panel1.width = 500
$Panel1.location = New-Object System.Drawing.Point(6, 54)

$backupButton = New-Object system.Windows.Forms.Button
$backupButton.text = "Backup Now!"
$backupButton.width = 150
$backupButton.height = 30
$backupButton.location = New-Object System.Drawing.Point(200, 10)
$backupButton.Font = New-Object System.Drawing.Font('Microsoft Sans Serif', 12)

$Form.controls.AddRange(@($Panel1))
$Panel1.controls.AddRange(@($backupButton))


$backupButton.Add_Click({
        Write-Host "backupButton"
        $ResultText.text = "`r`n" + "`r`n" + "Copying your shit ... Please Wait" 
        winget list | Out-Host
        if ($?) { Write-Host "Installed Brave Browser" }
        $ResultText.text = "`r`n" + "Finished Installing Brave" + "`r`n" + "`r`n" + "Ready for Next Task"
        Write-Host $ResultText
    })

[void]$Form.ShowDialog()
