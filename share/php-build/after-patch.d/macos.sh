#  see https://github.com/php/php-src/commit/e28db2276b3d73bcdbf256bd7efffff3e8f874e0
# after appling patch need to rebuild configure

if is_osx; then
  if [[ "$DEFINITION" =~ ^("7.2.".*)$ ]]; then
    # regenerate ./configure after patching
    ./buildconf --force
  fi;
fi;
