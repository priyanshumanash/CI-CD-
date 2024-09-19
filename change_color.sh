#!/bin/bash

# Define the colors to change
PRIMARY_COLOR="#FF5733"  # New primary color
SECONDARY_COLOR="#33FF57"  # New secondary color

# Replace color definitions in the main.dart file
sed -i "s/color: Color(0xFF2196F3)/color: Color($PRIMARY_COLOR)/g" lib/main.dart
sed -i "s/color: Color(0xFF03A9F4)/color: Color($SECONDARY_COLOR)/g" lib/main.dart

echo "Colors have been changed to Primary: $PRIMARY_COLOR and Secondary: $SECONDARY_COLOR"
