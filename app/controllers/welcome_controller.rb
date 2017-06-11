class WelcomeController < ApplicationController

  def index
    flash[:notice] = "千里马需要伯乐，美食需要yummy！"
  end

end
