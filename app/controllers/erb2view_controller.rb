
require 'slim2erb0maru'

class Erb2viewController < ApplicationController
  def index
     @tom = session[:user_id]
  end

  def top
  end

  def input
    @test10d_list = Erb2view.order("created_at DESC").limit(5)
    tom = params.permit(:text)["text"]
    session[:user_id] = Slim::Erbcon.new(tom).view
    @tom = session[:user_id]
    
    p "############"
    respond_to do |format|
        format.js
    end
  end
  
  def htmlinput
    @test10d_list = Erb2view.order("created_at DESC").limit(5)
    tom = params.permit(:text)["text"]
    session[:user_id] = Slim::Erbcon.new(tom).view
    @tom = session[:user_id]
    
    p "############"
    respond_to do |format|
        format.js
    end
  end


  def changeview
    @tom = session[:user_id]
    p "view##############"
    respond_to do |format|
      format.js
    end
  end
  
  def changehtmlview
    @tom = session[:user_id]
    p "htmlview##############"
    respond_to do |format|
      format.js
    end
  end
end
