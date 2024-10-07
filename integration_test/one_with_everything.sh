#!/usr/bin/env bash

set -e

## Setup ##

repos="repos/flutter"
device=""

# Gather flag variables
while [[ "$1" != "" ]]; do
  case $1 in
    --device ) shift
               device="-d $1"
               ;;
    --repo-path ) shift
              repos="$1"
              ;;
    * ) echo "Invalid input. Aborting."; exit 1
  esac
  shift
done

prefix=$HOME/$repos/dotnet

## Tests ##

flutter drive --driver=$prefix/test_driver/integration_test_driver.dart --target=$prefix/integration_test/default_test.dart

flutter drive --driver=$prefix/test_driver/integration_test_driver.dart --target=$prefix/integration_test/es_test.dart
flutter drive --driver=$prefix/test_driver/integration_test_driver.dart --target=$prefix/integration_test/fr_test.dart

flutter drive --driver=$prefix/test_driver/integration_test_driver.dart --target=$prefix/integration_test/lefty_test.dart

flutter drive --driver=$prefix/test_driver/integration_test_driver.dart --target=$prefix/integration_test/minimum_config_test.dart
flutter drive --driver=$prefix/test_driver/integration_test_driver.dart --target=$prefix/integration_test/maximum_config_test.dart