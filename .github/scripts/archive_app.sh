#!/bin/bash

set -eo pipefail

xcodebuild -workspace GHActionExemple.xcworkspace \
            -scheme GHActionExemple\ iOS \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/GHActionExemple.xcarchive \
            clean archive | xcpretty
