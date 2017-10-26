require 'slim'

module Slim
  class ERBConverter < Engine
    replace :StaticMerger, Temple::Filters::CodeMerger
    replace :Generator, Temple::Generators::ERB
  end
  
  class Erbcon
    def initialize(input)
      @story01_var = input
      @erbcon = ERBConverter.new.call(@story01_var)
      story01
    end
    
    attr_accessor :view, :html
    
    def story01
     @view = @erbcon.delete("\n")
     @html = @erbcon
    end
  end
end