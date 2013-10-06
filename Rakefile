desc 'Install vim'
task :install do
  current_dir = File.dirname(__FILE__)
  src = "#{current_dir}/.vimrc"
  dest = Dir.home + "/.vimrc"
  File.symlink(src, dest) && puts("Symlinking #{dest} -> #{src}") unless File.symlink?(dest) || File.exists?(dest)
  if !File.directory?("#{current_dir}/bundle/vundle")
    exec "(cd #{current_dir}/bundle && git clone git://github.com/gmarik/vundle.git vundle && vim +BundleInstall +qall)"
  else
    exec '(vim +BundleInstall +qall)'
  end
end


task :default => [:install]
