# CombineSubdirs
Simple Windows Powershell script to combine all files from subdirectories into a root folder

## Requirements
- Windows Operating System
- PowerShell 5.1 or higher

## Usage
To use this script, follow these steps:

1. **Clone or download this repository** to your local machine.

2. **Navigate to the folder** containing `CombineSubdirs.bat`.

3. **Run the batch file** by double-clicking on `CombineSubdirs.bat` or executing it from the command prompt. This will launch a folder browser dialog.

4. **Select the source directory** from which you want to move files. This directory should contain the subdirectories whose files you want to consolidate.

5. **Confirm your selection** in the dialog. The script will then:
    - Move all files from the subdirectories to the selected source directory.
    - Remove all empty subdirectories within the selected source directory.

6. **Check the command prompt window** for messages about the process. It will notify you whether the operation was successful or if the selected directory did not exist.

## Features
- **Interactive Directory Selection:** The script uses a graphical folder browser for easy directory selection.
- **Safety Measures:** Files with the same name are overwritten in the destination. Ensure no critical files are at risk.

## Notes
- The script is intended for use on local machines where the user has necessary permissions to modify and move files.
- If files with the same names exist in different subdirectories, they will be overwritten when moved to the parent directory. Please backup your data before running the script to prevent data loss.

## License
This project is released under the MIT License.

## Contributing
Contributions to this project are welcome. Please fork the repository and submit a pull request.
