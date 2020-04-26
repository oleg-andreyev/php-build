#see https://github.com/php/php-src/commit/e28db2276b3d73bcdbf256bd7efffff3e8f874e0
# applying this patch to lower versions

if is_osx; then
  if [[ "$DEFINITION" =~ ^("7.0.".*)$ || "$DEFINITION" =~ ^("7.1.".*)$ || "$DEFINITION" =~ ^("7.2.".*)$ || "$DEFINITION" =~ ^("7.3.".*)$ ]]; then
    echo $DEFINITION
     sed -i -E 's#test -f \$ICONV_DIR/\$PHP_LIBDIR/lib\$iconv_lib_name.\$SHLIB_SUFFIX_NAME$#test -f $ICONV_DIR/$PHP_LIBDIR/lib$iconv_lib_name.$SHLIB_SUFFIX_NAME || test -f $ICONV_DIR/$PHP_LIBDIR/lib$iconv_lib_name.tbd#g' acinclude.m4
    # regenerate ./configure after patching
    ./buildconf --force
  fi;
fi;
