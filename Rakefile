desc 'Install vim'
task :install do
  current_dir = File.dirname(__FILE__)
  src = "#{current_dir}/.vimrc"
  dest = Dir.home + "/.vimrc"
  File.symlink(src, dest) && puts("Symlinking #{dest} -> #{src}") unless File.symlink?(dest) || File.exists?(dest)
  if !File.directory?("#{current_dir}/bundle/Vundle.vim")
    exec "(cd #{current_dir}/bundle && git clone https://github.com/gmarik/Vundle.vim Vundle.vim && vim +PluginInstall +qall)"
  else
    exec '(vim +PluginInstall +qall)'
  end
end


task :default => [:install]
