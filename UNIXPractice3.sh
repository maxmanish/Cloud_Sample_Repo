# 21-Apr-26 [DIFF, CHMOD, PS, DF, DU, KILL, FIND, MV, RM, CP]
# Write a UNIX command to compare orders_day1.csv and orders_day2.csv and show the differences
diff orders_day1.csv orders_day2.csv

# Write a UNIX command to give execute permission to the owner of run_etl.sh
chmod u+x run_etl.sh

# Write a UNIX command to display all running processes in full detail
ps -ef # e-shows all running processes. f-full format

# Write a UNIX command to display disk space usage/available on the filesystem in a human‑readable format
df -h # h-human‑readable format (filesystem level)

# Write a UNIX command to display disk usage of directory/files in the current location in a human‑readable format
du -h # h-human‑readable format (folder/file usage level) (files/directories/sub-directories in current directory)
du -sh # s-summary only (files/directories in current directory)

# Write a UNIX command to terminate a running process with PID 4567 gracefully
kill 4567 #gracefully (Allows the process to: close files, release resources, Write logs/checkpoints)
kill -9 4567 #forcefully

# Write a UNIX command to find all .log files in the current directory and its subdirectories
find . -name "*.log" # find-find files with name, recursively. dot-start searching from current directory

# More find commands
find . -iname "*.log" #ignores case in name
find . -type f -name "*.csv" #type f - files only
find . -type d -name "staging" #type f - directories only
find . -type f -size +1G #find files with size > 1GB
find . -type f -mtime -1 #find files modified within last 1 day

# Count how many .csv files exist
find . -type f -name "*.csv" | wc -l

# Find files with 777 permissions (files with security risk)
find . -type f -perm 777

# Write a UNIX command to move orders.csv into the archive directory
mv orders.csv archive/ #path is relative to current directory
mv orders.csv ./archive/ #path is relative (explicitely) to current directory
mv orders.csv .archive/ #path is relative to current directory, however, [.archive] is a hidden directory

# Other use cases of mv command
mv *.csv archive/ #Move all CSV files to archive location
mv run_20260419 archive/ #move a directory to archive location

# Use cases of mv for RENAMING files/folders
mv orders.csv orders_20260419.csv #renames the file
mv staging staging_validated #renames a directory
mv orders.csv archive/orders_$(date +%Y%m%d).csv #archive and renaming both together
mv -i new_orders.csv orders.csv # i-prompt to overwrite orders.csv? (y/n)
mv -n orders.csv archive/ #n-prevents overwriting, file is skipped if already exists

# Write a UNIX command to delete the file orders.tmp
rm orders.tmp #permanent delete, no recycle bin
rm -i orders.tmp #i-asks for confirmation before deletion

# More use cases of rm
rm -r temp_dir #r-removes directory and all it's contents recursively
rm -ri temp_dir #r-removes directory and all it's contents recursively. i-asks for confirmation for each file/subfolder
rm -rf temp_dir #r-removes recursively. f-force removal, no warnings
rm file1.csv file2.csv file3.csv #remove multiple files
rm *.tmp #removing files using wildcard
rm staging/*.tmp #removing files (with tmp extension) inside a folder using wildcard
rm dir/* #remove files inside a directory (keeps directory intact)
rm -rfi temp_dir #when both -i and -f are used, -i takes precedence over -f (will ask for confirmation)
