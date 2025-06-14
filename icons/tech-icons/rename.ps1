cd "F:\Desktop Folders\Programming\AoE2 Build Tool\icons\tech-icons"

# First, let's see what files we have
Get-ChildItem

# Rename .tmp files back to .png first
Get-ChildItem *.tmp | ForEach-Object {
    $newName = $_.BaseName + ".png"
    Rename-Item $_.Name $newName.ToLower()
    Write-Host "Fixed: $($_.Name) -> $newName"
}