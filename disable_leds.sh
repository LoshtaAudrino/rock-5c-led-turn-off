#!/bin/bash

# Script to disable user LEDs on Radxa ROCK 5C

# Check if the system supports the LEDs
if [ -d "/sys/class/leds/user-led1" ]; then
    echo "Disabling user LEDs..."

    # Disable triggers and turn off LEDs
    echo none | sudo tee /sys/class/leds/user-led1/trigger
    echo 0 | sudo tee /sys/class/leds/user-led1/brightness

    echo none | sudo tee /sys/class/leds/user-led2/trigger
    echo 0 | sudo tee /sys/class/leds/user-led2/brightness

    echo "User LEDs have been turned off."
else
    echo "No user LEDs found. Exiting..."
    exit 1
fi
