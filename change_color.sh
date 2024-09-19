#!/bin/bash

# Randomly change the primary and secondary colors in main.dart
PRIMARY_COLOR=$(printf '#%06X\n' $((RANDOM%16777215)))
SECONDARY_COLOR=$(printf '#%06X\n' $((RANDOM%16777215)))

# Update the main.dart file
sed -i "s/primaryColor: Colors.blue/primaryColor: Color($PRIMARY_COLOR)/g" lib/main.dart
sed -i "s/secondary: Colors.orange/secondary: Color($SECONDARY_COLOR)/g" lib/main.dart

echo "Updated primary color to: $PRIMARY_COLOR"
echo "Updated secondary color to: $SECONDARY_COLOR"
