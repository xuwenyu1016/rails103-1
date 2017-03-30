class WelcomeController < ApplicationController
  def index
  flash[:notice] = "这 warning 信息！"
end
end
