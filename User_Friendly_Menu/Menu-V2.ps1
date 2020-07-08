Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore

$form = New-Object System.Windows.Forms.Form -Property @{
    Width = 400
    Height = 300
    AutoSize = $true
    AutoSizeMode = 'GrowAndShrink'
    StartPosition = 'CenterScreen'
}

$scriptActions = [ordered]@{}
Import-Csv Buttons.txt -Delimiter " " | ForEach-Object {
    $scriptActions.Add($_.ButtonName, $_.Action)
}

[string[]] $keys = $scriptActions.Keys
$y = 0     # keep track of the Y coordinate separately...
for ($i = 0; $i -lt $keys.Length; $i++) {

    $key = $keys[$i]

    if ($i % 2) {
        $x = 125
    }
    else {
        $x = 0
        if ($i -gt 0) {
            $y += 40
        }
    }

    $b = New-Object System.Windows.Forms.Button -Property @{
        Name = $key.Replace(' ', '')
        Text = $key
        Tag = $key
        Location = "$x, $y"
        Size = "125, 30"
        add_Click = {
            Start-Process $scriptActions[$args[0].Tag]
        }
    }
    [void] $form.Controls.Add($b)
    
}

$form.ShowDialog()
