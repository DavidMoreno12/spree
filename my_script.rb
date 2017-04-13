def image_magick_installed?
  #cmd = 'identify -version'
  cmd = 'identify -version || true'
  if RUBY_PLATFORM =~ /mingw|mswin/ #windows
    cmd += " >nul"
  else
    cmd += " >/dev/null"
  end
  # true if command executed succesfully
  # false for non zero exit status
  # nil if command execution fails
  system(cmd)
end