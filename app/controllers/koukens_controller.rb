class KoukensController < ApplicationController    
    before_action :authenticate_user!, only: [:new, :create]
    def index
        @koukens = Kouken.all

        if params[:tag_ids]
            @koukens = []
            params[:tag_ids].each do |key, value|
              if value == "1"
                tag_koukens = Tag.find_by(name: key).koukens
                @koukens = @koukens.empty? ? tag_koukens : @koukens & tag_koukens
              end
            end
          end
        
          if params[:tag]
            Tag.create(name: params[:tag])
          end
    end

    def new
        @kouken = Kouken.new
    end

  def create
    kouken = Kouken.new(kouken_params)
    if kouken.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @kouken = Kouken.find(params[:id])
  end

  def edit
    @kouken = Kouken.find(params[:id])
  end

  def syoukai
  end

  def event
  end

  def top
  end

  def update
    kouken = Kouken.find(params[:id])
    if kouken.update(kouken_params)
      redirect_to :action => "show", :id => kouken.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    kouken = Kouken.find(params[:id])
    kouken.destroy
    redirect_to action: :index
  end

 

  private
  def kouken_params
    params.require(:kouken).permit(:tag, :main, :title,:YouTube,:image, :youtube_url, :start_time,tag_ids: [])
  end
end

