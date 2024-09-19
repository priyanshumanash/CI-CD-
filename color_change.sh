#!/bin/bash

# Function to generate a random hex color
generate_random_color() {
  printf '#%06X\n' $((RANDOM % 0xFFFFFF))
}

# Generate random colors for primary and secondary colors
PRIMARY_COLOR=$(generate_random_color)
SECONDARY_COLOR=$(generate_random_color)

# Update main.dart with the new random colors
sed -i "s/primary: Color(0xFF[0-9A-F]\{6\})/primary: Color(0x${PRIMARY_COLOR:1})/" lib/main.dart
sed -i "s/secondary: Color(0xFF[0-9A-F]\{6\})/secondary: Color(0x${SECONDARY_COLOR:1})/" lib/main.dart

echo "Updated primary color to $PRIMARY_COLOR"
echo "Updated secondary color to $SECONDARY_COLOR"
