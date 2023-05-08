#!/usr/bin/env bash

set -eux

dst_dir=~/Library/Developer/Xcode/Templates/File\ Templates/MultiPlatform/Source

if [ ! -d "${dst_dir}" ]; then 
  mkdir -p "${dst_dir}"
fi

objcpp_template=Objective-C++\ File.xctemplate
objcpp_new_superclass_template=Objective-C++\ new\ superclass.xctemplate

if [ -d "${dst_dir}/${objcpp_template}" ]; then
  rm -rf "${dst_dir}/${objcpp_template}"
fi

if [ -d "${dst_dir}/${objcpp_new_superclass_template}" ]; then
  rm -rf "${dst_dir}/${objcpp_new_superclass_template}"
fi

cp -a "${objcpp_template}" "${dst_dir}"
cp -a "${objcpp_new_superclass_template}" "${dst_dir}"
