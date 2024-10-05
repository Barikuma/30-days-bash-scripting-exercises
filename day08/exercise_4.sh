#!/bin/bash

# This script uses a here document to generate a simple html file

file="index.html"

cat << EOF > $file
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Simple HTML Page</title>
</head>
<body>
    <h1>Welcome to My Simple HTML Page</h1>
    <p>This is a basic HTML page generated using a bash script with a here document.</p>
</body>
</html>
EOF

echo "$file has been created"
