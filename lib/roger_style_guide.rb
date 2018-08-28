require "pathname"

# Toplevel module for all things concerning RogerStyleGuide
module RogerStyleGuide
  # The path within project.html_path where the components reside
  def self.components_paths=(path)
    @components_paths = [Pathname.new(path)]
  end

  def self.components_paths
    @components_paths || ["components"]
  end
end

# Helpers
require File.dirname(__FILE__) + "/roger_style_guide/helpers"

# Generators
require File.dirname(__FILE__) + "/roger_style_guide/generators"

# Templates
require File.dirname(__FILE__) + "/roger_style_guide/templates"
