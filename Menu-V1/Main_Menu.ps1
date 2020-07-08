<# This form was created by TSgt Stephens, 317 AMXS/MXASF, 16 JUNE 2020
Thank you for the interest and support AF Quarantine University!

Optimism is the faith that leads to achievement. 
Nothing can be done without hope and confidence
~ Helen Keller

This form is currently set up to display 10 buttons, an image box, and the data grid
That is used to display printer names and status assigned to your computer/profile
Following the instructions below, you can add or remove items to suit your needs

Feel free to share with this and if there are any questions or your need help you can
contact me at andrew.stephens.4@us.af.mil

#>

PowerShell.exe -windowstyle hidden {Main_Menu.ps1}

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Helpdesk                        = New-Object system.Windows.Forms.Form
$Helpdesk.ClientSize             = '470,505'
$Helpdesk.text                   = "Quick Reference Menu"
$Helpdesk.TopMost                = $false

# Picture box currently displays the AF Logo, but you can change it to suit your needs
$PictureBox1                     = New-Object system.Windows.Forms.PictureBox
$PictureBox1.width               = 130
$PictureBox1.height              = 130
$PictureBox1.location            = New-Object System.Drawing.Point(28,10)
$PictureBox1.imageLocation       = "logo-footer-white.png"
$PictureBox1.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom

# This button is functional and is used to output printer names and status in the datagrid on the
# right side of the form.  
$Printer_status                  = New-Object system.Windows.Forms.Button
$Printer_status.text             = "Printer Status"
$Printer_status.width            = 150
$Printer_status.height           = 30
$Printer_status.location         = New-Object System.Drawing.Point(21,153)
$Printer_status.Font             = 'Microsoft Sans Serif,10'

# Leave this alone, this is used to display the printer name and status assigned to
# your profile/computer
$DataGridView1                   = New-Object system.Windows.Forms.DataGridView
$DataGridView1.width             = 243
$DataGridView1.height            = 466
$DataGridView1.Font              = 'Microsoft Sans Serif,8'
$DataGridView1.location          = New-Object System.Drawing.Point(197,14)
# **********************************************************************************

# Buttons are assigned generic names, with the exception of the printer status
# The printer status is functional and outputs the printer names and status
# You can leave the assigned names, or change them to suit your needs
# Buttons are currently spaced 30pxs apart, names displayed are generic
$Button_1                        = New-Object system.Windows.Forms.Button
$Button_1.text                   = "Your Link"
$Button_1.width                  = 150
$Button_1.height                 = 30
$Button_1.location               = New-Object System.Drawing.Point(21,183)
$Button_1.Font                   = 'Microsoft Sans Serif,10'

$Button_2                        = New-Object system.Windows.Forms.Button
$Button_2.text                   = "Your Link"
$Button_2.width                  = 150
$Button_2.height                 = 30
$Button_2.location               = New-Object System.Drawing.Point(21,213)
$Button_2.Font                   = 'Microsoft Sans Serif,10'

$Button_3                        = New-Object system.Windows.Forms.Button
$Button_3.text                   = "Your Link"
$Button_3.width                  = 150
$Button_3.height                 = 30
$Button_3.location               = New-Object System.Drawing.Point(21,243)
$Button_3.Font                   = 'Microsoft Sans Serif,10'

$Button_4                        = New-Object system.Windows.Forms.Button
$Button_4.text                   = "Your Link"
$Button_4.width                  = 150
$Button_4.height                 = 30
$Button_4.location               = New-Object System.Drawing.Point(21,273)
$Button_4.Font                   = 'Microsoft Sans Serif,10'

$Button_5                        = New-Object system.Windows.Forms.Button
$Button_5.text                   = "Your Folder"
$Button_5.width                  = 150
$Button_5.height                 = 30
$Button_5.location               = New-Object System.Drawing.Point(21,303)
$Button_5.Font                   = 'Microsoft Sans Serif,10'

$Button_6                        = New-Object system.Windows.Forms.Button
$Button_6.text                   = "Your Folder"
$Button_6.width                  = 150
$Button_6.height                 = 30
$Button_6.location               = New-Object System.Drawing.Point(21,333)
$Button_6.Font                   = 'Microsoft Sans Serif,10'

$Button_7                        = New-Object system.Windows.Forms.Button
$Button_7.text                   = "Your Folder"
$Button_7.width                  = 150
$Button_7.height                 = 30
$Button_7.location               = New-Object System.Drawing.Point(21,363)
$Button_7.Font                   = 'Microsoft Sans Serif,10'

$Button_8                        = New-Object system.Windows.Forms.Button
$Button_8.text                   = "Your Folder"
$Button_8.width                  = 150
$Button_8.height                 = 30
$Button_8.location               = New-Object System.Drawing.Point(21,393)
$Button_8.Font                   = 'Microsoft Sans Serif,10'

$Button_9                        = New-Object system.Windows.Forms.Button
$Button_9.text                   = "Your Folder"
$Button_9.width                  = 150
$Button_9.height                 = 30
$Button_9.location               = New-Object System.Drawing.Point(21,423)
$Button_9.Font                   = 'Microsoft Sans Serif,10'


# Add your frequently used links here, change names to suit your needs
# Example: $af_portal_path = "https://www.my.af.mil/" this would open the
# AF Portal Homepage
$your_url_1 = ""
$your_url_2 = ""
$your_url_3 = ""
$your_url_4 = ""
$your_url_5 = ""


# Here you can assign the folder paths to frequently opened/used folders
# Example: $path_to_folder = "\\fnwz-fs-05pv\Dyess_317AW_WS\317_AW_Public\02. Common\"
# Current "Bug" linking paths this way will open individual windows
$your_folder_path_1 = ""
$your_folder_path_2 = ""
$your_folder_path_3 = ""
$your_folder_path_4 = ""


# If you choose to add more buttons to the menu, make sure you add them to the range or they will not display. Currently shows 10 buttons, Image, and DataGrid
$Helpdesk.controls.AddRange(@($PictureBox1,$Printer_status,$Button_1, $Button_2,$Button_3,$Button_4,$Button_5,$Button_6,$Button_7,$Button_8,$Button_9,$DataGridView1))
$Helpdesk.Add_TabIndexChanged({ Tab1 })

# Links will open individual Folders
# Here, your will assign your paths to the buttons you made above
# Example: $AF_Portal.Add_Click({Start-Process $af_portal_path})
# If I clicked the above button, it would open the AF Portal Homepage
$Button_1.Add_Click({Start-Process $your_url_1})
$Button_2.Add_Click({Start-Process $your_url_2})
$Button_3.Add_Click({Start-Process $your_url_3})
$Button_4.Add_Click({Start-Process $your_url_4})
$Button_5.Add_Click({Start-Process $your_url_5})

# Buttons Will Open Folders
$Button_6.Add_Click({Start-Process $your_folder_path_1})
$Button_7.Add_Click({Start-Process $your_folder_path_2})
$Button_8.Add_Click({Start-Process $your_folder_path_3})
$Button_9.Add_Click({Start-Process $your_folder_path_4})


#Retrieves Network Printer Status 
$Printer_status.Add_Click({$Prt = Get-Printer | select Name, PrinterStatus| ConvertTo-Datatable $DataGridView1.DataSource = $Prt})


#Retrieves Network Printer Status 
$Printer_status.Add_Click({$Prt = Get-Printer | select Name, PrinterStatus| ConvertTo-Datatable 
$DataGridView1.DataSource = $Prt})


# Leave this alone, this is used to display the printer name and status assigned to
# your profile/computer
function ConvertTo-DataTable
{
    <#
    .Synopsis
        Creates a DataTable from an object
    .Description
        Creates a DataTable from an object, containing all properties (except built-in properties from a database)
    .Example
        Get-ChildItem| Select Name, LastWriteTime | ConvertTo-DataTable
    .Link
        Select-DataTable
    .Link
        Import-DataTable
    .Link
        Export-Datatable
    #> 
    [OutputType([Data.DataTable])]
    param(
    # The input objects
    [Parameter(Position=0, Mandatory=$true, ValueFromPipeline = $true)]
    [PSObject[]]
    $InputObject
    ) 
 
    begin { 
        
        $outputDataTable = new-object Data.datatable   
        $knownColumns = @{}     
    } 

    process {         
               
        foreach ($In in $InputObject) { 
            $DataRow = $outputDataTable.NewRow()   
            $isDataRow = $in.psobject.TypeNames -like "*.DataRow*" -as [bool]        

            $simpleTypes = ('System.Boolean', 'System.Byte[]', 'System.Byte', 'System.Char', 'System.Datetime', 'System.Decimal', 'System.Double', 'System.Guid', 'System.Int16', 'System.Int32', 'System.Int64', 'System.Single', 'System.UInt16', 'System.UInt32', 'System.UInt64')

            $SimpletypeLookup = @{}
            foreach ($s in $simpleTypes) {
                $SimpletypeLookup[$s] = $s
            }            
            foreach($property in $In.PsObject.properties) {   
                if ($isDataRow -and 
                    'RowError', 'RowState', 'Table', 'ItemArray', 'HasErrors' -contains $property.Name) {
                    continue     
                }
                $propName = $property.Name
                $propValue = $property.Value
                $IsSimpleType = $SimpletypeLookup.ContainsKey($property.TypeNameOfValue)

                if (-not $outputDataTable.Columns.Contains($propName)) {   
                    $outputDataTable.Columns.Add((
                        New-Object Data.DataColumn -Property @{
                            ColumnName = $propName
                            DataType = if ($issimpleType) {
                                $property.TypeNameOfValue
                            } else {
                                'System.Object'
                            }
                        }
                    ))
                }                   
                
                $DataRow.Item($propName) = if ($isSimpleType -and $propValue) {
                    $propValue
                } elseif ($propValue) {
                    [PSObject]$propValue
                } else {
                    [DBNull]::Value
                }
                
            }   
            $outputDataTable.Rows.Add($DataRow)   
        } 
    }  
      
    end 
    { 
        ,$outputDataTable
    } 
}
[void]$Helpdesk.ShowDialog()
