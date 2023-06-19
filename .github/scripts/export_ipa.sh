#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/GHActionExemple.xcarchive \
            -exportOptionsPlist GHActionExemple/GHActionExemple\ iOS/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
