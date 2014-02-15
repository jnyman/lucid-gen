require 'thor'
require 'lucid-gen/generators/project'

module LucidGen
  class Generator < Thor
    desc 'project NAME', 'Create a new project.'

    method_option :driver, aliases: '-d', type: :string, required: false, desc: "Framework driver to use. (Default value is 'fluent'.)"

    def project(name)
      puts "Name of project: #{name}"
      driver = options[:driver].nil? ? 'fluent' : options[:driver]
      LucidGen::Generators::Project.start([name, driver])
    end
  end
end