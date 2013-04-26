
function error {
  echo -e "\033[31m$1\033[0m"
}

function success {
  echo -e "\033[32m$1\033[0m"
}

function info {
  echo -e "\033[34m$1\033[0m"
}

function header {
  text=$(echo $1 | tr '[:lower:]' '[:upper:]')

  # Get text size
  offset=10
  size=$((${#text} + $offset))
  halfSize=$((($size-$offset) / 4))

  # Create docblocks
  block=`perl -e "print '/' x $size;"`
  halfBlock=`perl -e "print '/' x $halfSize;"`

  echo -e "\033[34m
$block
$halfBlock $text $halfBlock
$block
\033[0m"
}