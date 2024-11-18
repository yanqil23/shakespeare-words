#!/bin/bash

# Enable debug output
set -x  # Trace the execution of the script

input_file=$1
output_file="${input_file%.txt}_processed.txt"


# Make all letters lowercase
tr '[:upper:]' '[:lower:]' < "$input_file" |

# Remove punctuation
sed 's/[[:punct:]]//g' |

# Replace spaces and tabs with newlines
tr '[:space:]' '\n' |

# Remove blank lines
grep -v '^[[:space:]]*$' |

# Sort the output
sort > "$output_file"

echo "Processing completed."

