#!/bin/bash

# Show neofetch only once per session in interactive terminals
if [ -t 0 ] && [ -z "$NEOFETCH_SHOWN" ]; then
    export NEOFETCH_SHOWN=1
    command -v neofetch &>/dev/null && neofetch
fi
