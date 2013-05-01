
function download() {
  name=$1
  url=$2
  final="$HOME/Downloads/$(basename $url)"

  subheader "Downloading $name"
  curl $url -o $final
  success "Correctly downloaded $name"
}

# Download softwares ----------------------------------------------- /

header "Downloading main softwares"

download "iTerm" "https://iterm2.googlecode.com/files/iTerm2-1_0_0_20130319.zip"
download "Google Chrome" "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
download "MAMP" "http://www.mamp.info/downloads/releases/MAMP_MAMP_PRO_2.1.4.zip"
download "Sublime Text 3" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203030.dmg"
download "SourceTree" "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.6.0b3.dmg"

header "Downloading utilities"

download "Dropbox" "https://dl.dropboxusercontent.com/u/17/Dropbox%202.0.8.dmg"
download "HipChat" "http://downloads.hipchat.com.s3.amazonaws.com/mac-beta/HipChat-0.31-01uennzomg01wmg.zip"
download "ImageOptim" "http://imageoptim.com/ImageOptim.tbz2"
download "Mou" "http://mouapp.com/download/Mou.zip"
download "LiveReload" "http://download.livereload.com/LiveReload-2.3.24.zip"

download "LibreOffice" "http://download.documentfoundation.org/libreoffice/testing/4.0.3/mac/x86/LibreOffice_4.0.3.1_MacOS_x86.dmg"