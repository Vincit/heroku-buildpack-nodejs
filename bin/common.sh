error() {
  echo " !     $*" >&2
  exit 1
}

status() {
  echo "-----> $*"
}

protip() {
  echo
  echo "PRO TIP: $*" | indent
  echo "See https://devcenter.heroku.com/articles/nodejs-support" | indent
  echo
}

# e.g. npm install | indent
indent() {
  while read LINE; do
    echo "       $LINE"
  done
}

cat_npm_debug_log() {
  test -f $build_dir/npm-debug.log && cat $build_dir/npm-debug.log
}
