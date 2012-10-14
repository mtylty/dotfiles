require 'rake'
require 'yaml'

desc "Hook our dotfiles into system-standard positions."
task :install do
  targets.each do |app, linkables|
    linkables.each do |relative_source, destination|
      sources = Dir.glob(File.join(dotfiles_path, app, relative_source), File::FNM_DOTMATCH)

      sources = sources.reject{|s| File.basename(s) =~ /^(\.|\.\.)$/ }
      sources = sources.map{|s| File.expand_path(s) }

      full_destination = File.expand_path(destination)

      sources.each do |source|
        if File.directory?(source)
          # directory to directory
          symlink!(source, full_destination)
        elsif File.file?(source) && File.directory?(full_destination)
          # file to directory
          symlink!(source, File.join(full_destination, File.basename(source)))
        else
          # file to file
          symlink!(source, full_destination)
        end
      end

    end
  end

  puts "All files specified in targets.yml should be properly symlinked..."
end

task :default => 'install'

private 

def dotfiles_path
  @dotfiles_path ||= File.join(ENV["HOME"], '.dotfiles')
end

def targets
  @targets ||= YAML::load(File.open(File.join(dotfiles_path, 'targets.yml')))
end

def symlink!(source, destination)
  puts "#{source} => #{destination}"

  if yesno("Delete #{destination} and symlink from #{source} ? [y/N] ", false)
    FileUtils.rm_rf(destination) if File.symlink?(destination) || File.file?(destination) || File.directory?(destination)
    FileUtils.ln_s(source, destination)
  end
end

def yesno(prompt, default)
  print(prompt)
  result = gets.strip
  result.empty? ? default : result.downcase == 'y'
end
