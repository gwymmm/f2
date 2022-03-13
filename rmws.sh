find ./source -name "*.adb" -type f -print0 | xargs -0 sed -i 's/[[:space:]]*$//'
find ./source -name "*.ads" -type f -print0 | xargs -0 sed -i 's/[[:space:]]*$//'