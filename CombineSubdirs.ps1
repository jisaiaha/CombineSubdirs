Add-Type -AssemblyName System.Windows.Forms

# Create a folder browser dialog box
$folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$folderBrowser.Description = "Select Source Directory"
$folderBrowser.RootFolder = "MyComputer"

# Show the dialog and get the selected folder
$dialogResult = $folderBrowser.ShowDialog()

if ($dialogResult -eq [System.Windows.Forms.DialogResult]::OK) {
    $sourceDirectory = $folderBrowser.SelectedPath

    # Check if the entered directory exists
    if (Test-Path -Path $sourceDirectory -PathType Container) {
        # Get all files in subdirectories
        $files = Get-ChildItem -Path $sourceDirectory -Recurse -File

        # Move files to the source directory
        foreach ($file in $files) {
            $destinationPath = Join-Path -Path $sourceDirectory -ChildPath $file.Name
            Move-Item -LiteralPath $file.FullName -Destination $destinationPath -Force
        }

        Write-Host "Files from subdirectories moved successfully to $sourceDirectory"

        # Remove empty directories
        Get-ChildItem -Path $sourceDirectory -Recurse -Directory | Where-Object { $_.GetFileSystemInfos().Count -eq 0 } | Remove-Item -Force
        Write-Host "Empty directories removed."
    } else {
        Write-Host "The selected directory does not exist."
    }
} else {
    Write-Host "No directory selected."
}
