#!/bin/sh

list_paths()
{
    variable_name=$1
    echo "$variable_name = \\"
    sort | \
    sed \
      -e 's,^,\t,' \
      -e 's,$, \\,' | \
    sed \
      -e '$s, \\$,,'
}

mruby_dir=$1
find "${mruby_dir}/src" -type f -name '*.[ch]' | \
	list_paths "libmruby_la_SOURCES"
