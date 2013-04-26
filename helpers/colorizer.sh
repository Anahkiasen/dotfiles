
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

# Global width of headers
globalWidth=50

###
# Create a header
###
function header {
  text=$(echo $1 | tr '[:lower:]' '[:upper:]')

  # Get text size
  halfSize=$((($globalWidth - ${#text} - 2) / 2))

  # Create docblocks
  block=`perl -e "print '/' x $globalWidth;"`
  halfBlock=`perl -e "print '/' x $halfSize;"`

  info "
$block
$halfBlock $text $halfBlock
$block
"
}

###
# Create a subheader
###
function subheader {
  size=$(($globalWidth - 4 - ${#1}))
  docblock=`perl -e "print '-' x $size;"`

  info "
$1 $docblock /
"
}