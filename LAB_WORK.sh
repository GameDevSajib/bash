#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 3 ]; then
	    echo "Usage: $0 <Student1.txt> <Student2.txt> <Student3.txt>"
	        exit 1
fi

# Define file names
file1=$1
file2=$2
file3=$3

# Function to find unique Student IDs
find_unique_ids() {
	    cat "$file1" "$file2" "$file3" | awk '{print $1}' | sort -u
    }

    # Function to find duplicate Student IDs
    find_duplicate_ids() {
	        cat "$file1" "$file2" "$file3" | awk '{NF--;print}' | sort | uniq -d
	}

	# Function to find students from 'CSE' department and print count
	find_cse_students() {
		    grep -h ' CSE$' "$file1" "$file2" "$file3" | sort -u | wc -l
	    }

	    # Function to create student_cse.txt with unique Student IDs
	    create_student_cse_file() {
		        grep -h ' CSE$' "$file1" "$file2" "$file3" | sort -u > student_cse.txt
			    # awk '/ CSE/ {print $1}' | sort -u > student_cse.txt
		    }

		    # Function to create all_students.txt with unique Student IDs, Names, and Departments
		    create_all_students_file() {
			        # cat "$file1" "$file2" "$file3" | awk '!seen[$1]++' > all_students.txt
				    cat "$file1" "$file2" "$file3" | awk '{print $0}' | sort -u > all_students.txt
			    }

			    # Execute functions
			    echo "Unique Student IDs:"
			    find_unique_ids

			    echo -e "\nDuplicate Student IDs:"
			    find_duplicate_ids

			    echo -e "\nNumber of students from CSE department:"
			    find_cse_students

			    create_student_cse_file
			    echo -e "\nstudent_cse.txt created with unique Student IDs from CSE department."

			    create_all_students_file
			    echo -e "\nall_students.txt created with unique Student IDs, Names, and Departments."

