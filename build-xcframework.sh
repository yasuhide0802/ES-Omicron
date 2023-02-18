#!/bin/bash

set -eo pipefail

derived_data=DerivedData
archives_dir=archives
xcframework=GRDB.xcframework

build_opts=("BUILD_LIBRARY_FOR_DISTRIBUTION=YES" "SKIP_INSTALL=NO" "ONLY_ACTIVE_ARCH=NO")

rm -rf "${derived_data}" "${archives_dir}" "${xcframework}"

build_archive() {
    local platform=$1
    
    xcodebuild archive \
        -project upstream/GRDB.xcodeproj \
        -scheme GRDB \
        -destination "generic/platform=${platform}" \
        -archivePath "archives/GRDB-${platform}" \
        -derivedDataPath "${derived_data}" \
        "${build_opts[@]}" | xcbeautify
}

build_archive "iOS"
build_archive "iOS Simulator"
build_archive "macOS"

xcodebuild -create-xcframework \
    -archive "archives/GRDB-iOS.xcarchive" -framework GRDB.framework \
    -archive "archives/GRDB-iOS Simulator.xcarchive" -framework GRDB.framework \
    -archive "archives/GRDB-macOS.xcarchive" -framework GRDB.framework \
    -output "${xcframework}"
