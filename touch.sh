# # File Loacation Variable
file=Solution/$1".md"


# Import template in file
echo "# Python
\`\`\`python
$(cat template.py)
\`\`\`
# Java
\`\`\`java
$(cat template.java)
\`\`\`" > "$file"


# Replace space with tab
sed -i 's/    /\t/g' "$file"


# Open file in Currently opened window
code -r "$file"


# Address of new File
new_file="[$1](https://github.com/DeWill404/LeetCode/blob/master/Solution/${1// /%20}.md) |"


# Iterate i to table divider line "|-|-|-|-|-|"
i=1
while [[ '|-|-|-|-|-|' != $(sed -n "$i"p "README.md") ]]
do
	i=$[$i+1]
done
# Move one line below divider, to get first row
i=$[$i+1]

# Iterate to last row of table
while [ $(awk -F"|" "{print NF-1}" <<< $(sed -n "$i"p "README.md")) -eq 6 ]
do
	i=$[$i+1]
done


# Get last line details
line=$(sed -n "$i"p "README.md")
if [[ $line == "" ]]; then
	# Add new line
	i=$[$i-1]
	new_line=$(sed $i'a| '"$new_file" "README.md")
else
	# Append new address to previous
	new_line=$(replace "$line" "$line $new_file" < README.md)
fi


# Update new address in README.md file
echo "$new_line" > README.md