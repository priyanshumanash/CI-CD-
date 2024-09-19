#!/bin/bash

# Define the path to your main.dart file
MAIN_FILE="lib/main.dart"

# Generate a random color in hex format
RANDOM_COLOR=$(printf '#%06X\n' $((RANDOM % 0xFFFFFF)))

# Use sed to replace the primary color in main.dart
sed -i "s/primarySwatch: Colors.\+/primarySwatch: MaterialColor(0x${RANDOM_COLOR:1}, <int, Color>{400: Color(0x${RANDOM_COLOR:1})}),/" "$MAIN_FILE"

echo "Primary color changed to $RANDOM_COLOR"
