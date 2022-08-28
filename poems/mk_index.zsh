#!/bin/zsh
files=$(
    for f in *.txt
    do
        echo "    <li><a href="$f">${f%.*}</a></li>"
    done
)
ret="
<head>
</head>
<body>
  <h1>poems</h1>
  <ul>
"$files"
  </ul>
</body>
"
echo $ret > index.html