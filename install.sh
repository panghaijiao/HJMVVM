#!/bin/sh

TempInstallPath=~/Desktop/YPPMvvm
TempInstallTemplatesPath=~/Desktop/YPPMvvm/YPPMvvmTemplates
InstallTemplatesPath=~/Library/Developer/Xcode/Templates/YPP

[ -d "$TempInstallPath" ] || mkdir -p "$TempInstallPath"
[ -d "$TempInstallTemplatesPath" ] && rm -rf "$TempInstallTemplatesPath"

echo "\n-------------------- Download YPPMvvmTemplates--------------------\n"

cd "$TempInstallPath"
git clone git@git.coding.net:p275742376/YPPMvvmTemplates.git

echo "\n-------------------- Install YPPMvvmTemplates--------------------\n"

[ -d "$InstallTemplatesPath" ] && rm -rf "$InstallTemplatesPath"
mkdir -p "$InstallTemplatesPath"
cp -R YPPMvvmTemplates/YPPMvvm/*.xctemplate "$InstallTemplatesPath"

rm -rf "$TempInstallPath"

echo "Done!"
