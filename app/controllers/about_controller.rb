class AboutController < ApplicationController
   def index
    @user = User.new
   end
end