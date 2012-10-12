require 'rake'

desc "Hook our dotfiles into system-standard positions."
task :install do

  linkables = Dir.glob(File.join(ENV["HOME"], '.dotfiles', '*/**{.symlink}'))

  linkables.each do |linkable|
    overwrite = false

    file = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    if File.exists?(target) || File.symlink?(target)
      FileUtils.rm_rf(target)
    end
    `ln -s "#{linkable}" "#{target}"`
  end

  puts "All files specified in targets.yml should be properly symlinked..."
end

task :default => 'install'
