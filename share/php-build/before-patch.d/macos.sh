#see https://github.com/php/php-src/commit/e28db2276b3d73bcdbf256bd7efffff3e8f874e0
# applying this patch to lower versions

if is_osx && [[ "$DEFINITION" =~ ^("7.2.".*)$ ]]; then
  patch_file "macos-php-7.2.patch"
fi;