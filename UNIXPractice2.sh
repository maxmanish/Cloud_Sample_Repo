# 20-Apr-26
# Write a UNIX command to display customer_id along with the count of records for each customer
awk -F',' '{print $2}' orders.csv | sort | uniq -c

# Write a UNIX command to display customer_id and count, for customers having more than 1 record
awk -F',' '{print $2}' orders.csv | sort | uniq -c | awk '$1 > 1'

# Display only the 2nd column (customer_id) from orders.csv
awk -F',' '{print $2}' orders.csv

# You want to extract order_id and amount from orders.csv, and display them separated by a pipe (|)
awk -F',' '{print $1 | $4}' orders.csv

# Count the total number of records in orders.csv using awk only
awk 'END {print NR}' orders.csv

# Write an awk command to display only records with amount greater than 5000
awk -F',' '$4>5000' orders.csv #printing full line is default
awk -F',' '$4>5000 {print $0}' orders.csv

# You want to display customer_id and order_date only for records where payment_mode = CARD
awk -F',' '$6=="CARD" {print $2 "|" $5}' orders.csv

# You received a data file orders.csv. During validation, you want to find all records related to customer CUST1005
grep CUST1005 orders.csv
cat orders.csv | grep CUST1005 #UUOC (Useless Use of cat)

# You want to count how many records in orders.csv contain the string NULL. Write command to print only the count of lines containing NULL
grep NULL orders.csv | wc -l
grep -c NULL orders.csv # c -> count of matching lines

# You want to search for the word error in a log file etl.log, but the case may vary (ERROR, Error, error)
grep -i error etl.log

# You want to find all records that DO NOT contain the string SUCCESS in etl.log
grep -v SUCCESS etl.log # v -> invert match

# Write a grep command to find all records that start with ORD in orders.csv
awk -F',' '$1 ~ /^ORD/ {print $0}' orders.csv
grep ^ORD orders.csv # ^ start of the line
