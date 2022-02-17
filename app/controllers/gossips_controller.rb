class GossipsController < ApplicationController

  def index

  end

  def show

      @gossip = Gossip.find(params[:id])

    @id = params[:id]
  end

  def new
    @gossip = Gossip.new
  end


  def create
    @mygossip = gossip_params
    @gossip = Gossip.new(title: @mygossip[:title] , content: @mygossip[:content] , user_id: @mygossip[:user_id])
    if @gossip.save
      redirect_to root_path
    end

end



def edit

@gossip = Gossip.find(params[:id])
end

def update
  @gossip = Gossip.find(params[:id])
  if @gossip.update(gossip_params)

    redirect_to root_path
  else
    render :edit
  end
end

def destroy

    @gossip = Gossip.find(params[:id])
    @gossip.destroy
  redirect_to root_path
end



  private
  def gossip_params
    params.require(:gossip).permit(:title, :content, :user_id)
  end
end
