#!/bin/sh

command -v gvcolor >/dev/null 2>&1 || { sudo apt install graphviz -y; exit 1; }
