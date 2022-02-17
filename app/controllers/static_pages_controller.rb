class StaticPagesController < ApplicationController
  def home
    @user = User.all
    @gossip = Gossip.all
    @name = params[:name]
  end
  def team
  end
  def contact
  end
end
