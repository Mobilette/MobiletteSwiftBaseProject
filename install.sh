#!/bin/sh

if [ -z "$1" ]; then
	echo "Usage: ./install.sh PROJECT_NAME.";
	exit;
fi

NEW_PROJECT_NAME=$1;
OLD_PROJECT_NAME="MobiletteSwiftBaseProject";

echo "Start to install $NEW_PROJECT_NAME with base project.";
grep -Rl "$OLD_PROJECT_NAME" * --exclude=install.sh | xargs sed -i "" "s/$OLD_PROJECT_NAME/$NEW_PROJECT_NAME/";
grep -Rl "${OLD_PROJECT_NAME}Tests" * --exclude=install.sh | xargs sed -i "" "s/$OLD_PROJECT_NAME/$NEW_PROJECT_NAME/";
grep -Rl "${OLD_PROJECT_NAME}Tests" * --exclude=install.sh | xargs sed -i "" "s/${OLD_PROJECT_NAME}Tests/${NEW_PROJECT_NAME}Tests/";
mv "$OLD_PROJECT_NAME.xcodeproj" "$NEW_PROJECT_NAME.xcodeproj";
mv "$OLD_PROJECT_NAME" "$NEW_PROJECT_NAME";
mv "${OLD_PROJECT_NAME}Tests/${OLD_PROJECT_NAME}Tests.swift" "${OLD_PROJECT_NAME}Tests/${NEW_PROJECT_NAME}Tests.swift";
mv "${OLD_PROJECT_NAME}Tests" "${NEW_PROJECT_NAME}Tests";
echo "Did finish to install $NEW_PROJECT_NAME with base project.";
echo "Start to install pods.";
pod install
echo "Did finish to install pods.";
rm -f install.sh
echo "Did remove setup files.";