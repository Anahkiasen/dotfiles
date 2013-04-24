gems=("sass" "compass" "genghisapp" "susy" "bson_ext")

for gem in "${gems[@]}"
do
  if ! $(gem list $gem -i); then
    if [[ $gem = "sass" ]] || [[ $gem = "compass" ]] || [[ $gem = "genghisapp"; ]] then
      gem install $gem --pre
    else
      gem install $gem
    fi
  fi
done