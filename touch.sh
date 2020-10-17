# File Loacation Variable
file=Solution/$1


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
sed -i 's/    /\t/g' $file


# Open file in Currently opened window
code -r "$file"