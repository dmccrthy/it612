#!/bin/bash
# Assignment 2, Exercise 3: Mixed Messages
#
# Print "Everything is fine" to stdout
# Print "WARNING: SEVERE ERROR" to stderr
#
# Both will appear on screen when you run the script,
# but they should travel through different streams.
# Hint: How do you redirect output to a specific file descriptor?

# stdout is the default when printing
# to print to stderr you have to redirect to &2 (which is the file descriptor of stderr)
echo "Everything is fine"
echo "WARNING: SEVERE ERROR" >&2