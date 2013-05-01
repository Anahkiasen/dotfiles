subheader "Syncing NPM packages"

packages=("coffee-script" "kss" "bower" "requirejs" "clean-css" "uglify-js")
queue=""

for package in ${packages[@]}
do
  installed=$(npm list $package -g -i | grep "(empty)")
  if [ "$installed" ]; then
    queue="$queue $package"
  fi
done

if [[ "$queue" != "" ]]; then
  npm install $queue -g
else
  info "No packages to add to NPM"
fi