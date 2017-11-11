
require 'slim2erb0maru'

class Erb2viewController < ApplicationController
  def index
     @tom = session[:user_id]
     @copy = session[:copy_ok]
  end

  def top
  end

  def input
    tom = params.permit(:text)["text"]
    session[:user_id] = Slim::Erbcon.new(tom).view
    @tom = session[:user_id]
    
    session[:copy_ok] = tom
    @copy = session[:copy_ok]
    

    
    p "############"
    respond_to do |format|
        format.js
    end
  end
  
  def htmlinput
    tom = params.permit(:text)["text"]
    session[:user_id] = Slim::Erbcon.new(tom).view
    @tom = session[:user_id]
    
    session[:copy_ok] = tom
    @copy = session[:copy_ok]
    
    p "############"
    respond_to do |format|
        format.js
    end
  end


  def changeview
    @tom = session[:user_id]
    @copy = session[:copy_ok]
    p "view##############"
    respond_to do |format|
      format.js
    end
  end
  
  def changehtmlview
    @tom = session[:user_id]
    @copy = session[:copy_ok]
    p "htmlview##############"
    respond_to do |format|
      format.js
    end
  end
end
