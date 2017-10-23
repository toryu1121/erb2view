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
      i.text = tom
      i.save
    end
    
    p "############"
    @ok = respond_to do |format|
      if @ok.save
        p"########save##############"
        format.js
      end
    end
    
    
    
  end

  def view
  end
end
