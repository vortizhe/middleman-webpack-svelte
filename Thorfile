require 'thor/group'

module Middleman
  class Generator < ::Thor::Group
    include ::Thor::Actions

    source_root File.expand_path(File.dirname(__FILE__))

    def copy_default_files
      directory 'template', '.', exclude_pattern: /\.DS_Store$/
    end

    def install_node_dependencies
      if yes?('Do you want to use yarn?')
        run 'yarn install'
      else
        run 'npm install'
      end
    end
  end
end
