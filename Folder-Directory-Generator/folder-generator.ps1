# Working Directory - Where you want the sub folders to be created at
# Example: C:\Users\Default\Desktop
$workingdir = 'C:\Users\Default\Desktop'

# Delete the "#" if you need an additional folder directory created
#$workingdir2 = ''

# Text file listing names of the the sub-folders to be created
# Example: folder-list-one.txt has folder-one through folder-five as folder names
$products = Get-Content 'folder-list-one.txt'

# Delete the "#" if you need an additional folder directory created
#$products2 = Get-Content 'folder-list-two.txt'

# These sub folders will be created in the above directory using the calendar months
$subfolders = @(
    '01 - January'
    '02 - February'
    '03 - March'
    '04 - April'
    '05 - May'
    '06 - June'
    '07 - July'
    '08 - August'
    '09 - September'
    '10 - October'
    '11 - November'
    '12 - December'
)

foreach ($product in $products) 
{
    $rootcount = 0
        foreach ($sub in $subfolders) 
        {
            $subcount++
            mkdir (Join-Path $workingdir ("$product\ $sub"))
        }

}
# Delete the <##> If you need multiple folder directories created
<#
foreach ($product2 in $products2) 
{
    $rootcount = 0
        foreach ($sub in $subfolders) 
        {
            $subcount++
            mkdir (Join-Path $workingdir2 ("$product2\ $sub"))
        }

}
#>
