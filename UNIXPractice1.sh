# 19-Apr-26 (Day #1 WC HEAD TAIL SORT)
# Write a UNIX command to display the total number of records (rows) present in orders.csv
wc -l orders.csv

# You want to quickly view the first 5 records of the file orders.csv to do a sanity check on data format and values
head -5 orders.csv

# You want to check the column names in orders.csv. You assume that the header is present in the first line of the file
head -1 orders.csv

# Write a UNIX command to display the last 5 lines of orders.csv
tail -5 orders.csv

# Write a UNIX command to display all rows that contain the string CUST1005
grep CUST1005 orders.csv

# Write a UNIX command to display the content of orders.csv with commas replaced by |
sed 's/,/|/g' orders.csv #sed is a Stream EDitor (SED)
cat orders.csv | tr ',' '|'

# Count the number of lines that contain NULL in orders.csv
grep NULL orders.csv | wc -l

# Write a UNIX command to count the number of distinct customer IDs
awk -F',' {print $2} | sort | uniq | wc -l

# Write a UNIX command to display only duplicate rows from orders.csv
sort orders.csv | uniq -d

# Write a UNIX command to display only unique rows from orders.csv
sort orders.csv | uniq

#some more questions/solutions
awk -F',' '{print $2}' orders.csv | sort | uniq | wc -l
awk -F',' '{print $2}' orders.csv | sort | uniq -d
