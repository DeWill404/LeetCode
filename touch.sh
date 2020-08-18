# File Loacation Variable
file="Solution/"$1


# Open file in Currently opened window
code -r "$file"


# Import template in file
echo "# Python
\`\`\`python

\`\`\`
# Java
\`\`\`java

\`\`\`" > "$file"
