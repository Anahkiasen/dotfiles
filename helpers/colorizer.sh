
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
  echo -e "\033[34m
////////////////////////////////////////
// $1
////////////////////////////////////////\033[0m"
}