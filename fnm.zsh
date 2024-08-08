FNM_PATH="/Users/$USER/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/$USER/.local/share/fnm:$PATH"
  eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"
fi
