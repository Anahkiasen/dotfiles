subheader "Syncing Rubygems packages"

gems=("sass" "compass" "genghisapp" "susy" "bson_ext")

for gem in "${gems[@]}"
do
  if ! $(gem list $gem -i); then
    if [[ $gem = "sass" ]] || [[ $gem = "compass" ]] || [[ $gem = "genghisapp" ]]; then
      sudo gem install $gem --pre
    else
      sudo gem install $gem
    fi
  fi
done