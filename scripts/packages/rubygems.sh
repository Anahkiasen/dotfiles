gems=("sass --pre" "compass --pre" "genghisapp --pre" "susy" "bson_ext")

for gem in "${gems[@]}"
do
  if $(gem list $gem -i); then
    gem install $gem
  fi
done