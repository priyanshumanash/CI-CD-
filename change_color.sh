#!/bin/bash

# Function to generate a random hex color
generate_random_color() {
  printf '#%06X\n' $((RANDOM % 0xFFFFFF))
}

# Generate random colors
PRIMARY_COLOR=$(generate_random_color)
SECONDARY_COLOR=$(generate_random_color)

# Update main.dart with the new colors
sed -i "s/primaryColor: Colors.blue/primaryColor: Color(0x${PRIMARY_COLOR:1})/" lib/main.dart
sed -i "s/Colors.orange/Color(0x${SECONDARY_COLOR:1})/" lib/main.dart

echo "Updated primary color to $PRIMARY_COLOR"
echo "Updated secondary color to $SECONDARY_COLOR"
