
# Colors ----------------------------------------------------------- /

function error {
  echo -e "\033[31m$1\033[0m"
}

function success {
  echo -e "\033[32m$1\033[0m"
}

function info {
  echo -e "\033[34m$1\033[0m"
}

# Headers ---------------------------------------------------------- /

function header {
  text=$(echo $1 | tr '[:lower:]' '[:upper:]')

  # Get text size
  offset=5
  size=$((${#text} + $offset + $offset + 2))

  # Create docblocks
  block=`perl -e "print '/' x $size;"`
  halfBlock=`perl -e "print '/' x $offset;"`

  info "
$block
$halfBlock $text $halfBlock
$block
"
}

function subheader {
  size=$((35-${#1}))
  docblock=`perl -e "print '-' x $size;"`

  info "
$1 $docblock /
"
}