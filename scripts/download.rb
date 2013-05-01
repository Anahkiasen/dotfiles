#!/usr/bin/ruby

require_relative '../helpers/colorizer.rb'

# Softwares registry ----------------------------------------------- /

$softwares = {
  "chrome"      => ["Google Chrome",  "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"],
  "dropbox"     => ["Dropbox",        "https://dl.dropboxusercontent.com/u/17/Dropbox%202.0.8.dmg"],
  "hipchat"     => ["HipChat",        "http://downloads.hipchat.com.s3.amazonaws.com/mac-beta/HipChat-0.31-01uennzomg01wmg.zip"],
  "imageoptim"  => ["ImageOptim",     "http://imageoptim.com/ImageOptim.tbz2"],
  "iterm"       => ["iTerm",          "https://iterm2.googlecode.com/files/iTerm2-1_0_0_20130319.zip"],
  "libreoffice" => ["LibreOffice",    "http://download.documentfoundation.org/libreoffice/testing/4.0.3/mac/x86/LibreOffice_4.0.3.1_MacOS_x86.dmg"],
  "livereload"  => ["LiveReload",     "http://download.livereload.com/LiveReload-2.3.24.zip"],
  "mamp"        => ["MAMP",           "http://www.mamp.info/downloads/releases/MAMP_MAMP_PRO_2.1.4.zip"],
  "mou"         => ["Mou",            "http://mouapp.com/download/Mou.zip"],
  "sourcetree"  => ["SourceTree",     "http://downloads.atlassian.com/software/sourcetree/SourceTree_1.6.0b3.dmg"],
  "sublime"     => ["Sublime Text 3", "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203030.dmg"]
}

# Download method -------------------------------------------------- /

###
# Download a software
###
def download(software)
  name, url = $softwares[software]
  final = ENV['HOME']+"/Downloads/"+File.basename(url)

  # Download software
  print "Downloading #{name}".subheader()
  system "curl #{url} -o #{final}"

  # Print success message
  print "Correctly downloaded #{name}\n\n".success()
end

# Execution -------------------------------------------------------- /

# If we requested a specific file
if ARGV[0]
  download ARGV[0]

# Else download all
else
  $softwares.each { |software, value|
    #download software
  }
end
