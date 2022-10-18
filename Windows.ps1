# folder variable user input
$var = Read-Host -Prompt "Enter Folder"
# folder exist verification
$exist = Test-Path $var

if ( $exist -eq $true)
{ 
# if folder exists
	echo "Folder exists"
# filter variable user input    
    $var2 = Read-Host -Prompt "Enter Filter to search in $var"
    # display matching items in folder
    Get-ChildItem -Path $var* -Filter *$var2 | Select-Object Name,Directory | Format-Table -AutoSize * 
}

else 
{ 
# error out
    echo "Folder not found. "
}


