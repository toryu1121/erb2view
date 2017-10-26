
require 'slim2erb0maru'

class Erb2viewController < ApplicationController
  def index
    @test10d_list = Erb2view.order("created_at DESC").limit(5)
  end

  def top
  end

  def input
    @test10d_list = Erb2view.order("created_at DESC").limit(5)
    
    p "#####okkkk#######"
    @ok = Erb2view.new do |i|
      tom = params.permit(:text)["text"]
      p tom
      p "#####slim#######"
      #p Slim::ERBConverter(tom)
      
      tomm = Slim::Erbcon.new(tom)
      
      p tomm.html
      p tomm.view
      
      p "#####slim#######"
      i.text = tom
      i.save
    end
    
    p "############"
    respond_to do |format|
      if @ok.save
        p"########save##############"
        format.js
      end
    end
    
    
    
  end

  def view
  end
end
