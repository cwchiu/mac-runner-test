#!/usr/bin/env sh

BASE_PATH=`git rev-parse --show-toplevel`
WEBTRANSLATE_PUBLIC_TOKEN="XXXXXXXXXXXXXXX"
TEMPORAL_DIRECTORY="$BASE_PATH/.updateLocalizableStrings/"
LOCALIZABLE_STRINGS_PATH="$BASE_PATH/Zattoo/Resources/.localizable"

function createTemporalEnvironment {
    echo "š§  Creating temporal environment"
    [ ! -d $TEMPORAL_DIRECTORY ] && mkdir $TEMPORAL_DIRECTORY || return 0
}

function downloadStrings {
    echo "ā¬ļø  Downloading strings from webtranslateit.com"
    curl -s "https://webtranslateit.com/api/projects/$WEBTRANSLATE_PUBLIC_TOKEN/zip_file" > $TEMPORAL_DIRECTORY/LocalizableStrings.zip
}

function extractStrings {
    echo "š¦  Extracting strings"
    unzip -qqo $TEMPORAL_DIRECTORY/LocalizableStrings.zip -d $LOCALIZABLE_STRINGS_PATH
}

function cleanTemporalEnvironment {
    echo "š  Cleaning temporal environment"
    rm -rf $TEMPORAL_DIRECTORY
}

function updateStrings {
    createTemporalEnvironment && downloadStrings && extractStrings && cleanTemporalEnvironment
}

updateStrings  \
	&& echo "\nš»  Done: The strings were updated successfully. Check 'git diff' for further details" \
	|| echo "\nā  Something went wrong :("