# Log Archive Tool

A simple Bash script to archive logs from the command line.

This tool compresses a given directory (like /var/log) into a .tar.gz file, stores it in a dedicated archive folder, and logs the operation with the date and time. It’s a beginner-friendly project to practice Bash scripting, working with files, directories, timestamps, and command-line arguments.

## Features
-Accepts a directory as a command-line argument
-Creates a compressed archive (.tar.gz) with the current date and time
-Stores archives in ~/log_archives/
-Logs each archive operation in archive.log

## Usage
### 1.Make the script executable
```
-chmod +x log-archive
```
### 2.Run the script
```
./log-archive <log-directory>
```

### Example:
```
./log-archive /var/log
```

After running, you will see:
```
Archive created: /home/username/log_archives/logs_archive_20251223_134512.tar.gz
```

## Archive Location
All archives are stored in:
```
~/log_archives/
```

The log file archive.log in the same folder records each operation:
```
[2025-12-23 13:45:12] Archived /var/log -> logs_archive_20251223_134512.tar.gz
```

## Requirements
- Linux or macOS
- Bash shell
- tar installed (default on most systems)

## Example Output
```
~/log_archives/
├── logs_archive_20251223_134512.tar.gz
└── archive.log
```

## Notes
- The script only reads files; it does not modify the original directory.-
- You can archive any folder, not just /var/log.
- Use sudo only if archiving directories with restricted permissions.


Author

Created by [Prince] as a learning project in Bash scripting.
