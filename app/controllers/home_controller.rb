class HomeController < ApplicationController
  def index

    @id=params[:searchId]
    @videoname=params[:videoname]
    if(@id==nil && @videoname==nil)
      @id='Amq-qlqbjYA'
      @videoname="붐바야"
    end

  end

  def search
    search=params[:q]


    videos = Yt::Collections::Videos.new

    @searchId=videos.where(order: 'viewCount', q: search).first.id
    @videoname=videos.where(id: @searchId).first.title
    redirect_to controller: 'home', action: 'index',searchId: @searchId,videoname: @videoname

  end
end
