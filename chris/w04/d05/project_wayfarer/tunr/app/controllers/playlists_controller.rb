class PlaylistsController < ApplicationController

# before_action :authorize_admin!, except: [:index, :show, :new, :create] #if user is not logged in, it will only show index and show
# before_action :authenticate_user!, only: [:new, :create] 
before_action :authenticate_user!, only: [:index, :show] # 
before_action :find_playlist, only: [ :edit, :destroy, :update]


  def index
    @playlists = Playlist.all 
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = current_user.playlists.build(playlist_params)
    if @playlist.save 
      
      redirect_to playlist_path(@playlist) 
    else 
      render :new
    end
  end

  def show
    @playlist = Playlist.find params[:id]
  end

  def edit
    
  end


  def update
    
    if @playlist.update(playlist_params)
      redirect_to @playlist         
    else
      render :edit
    end 
  end


  def destroy
    
    @playlist.destroy
    redirect_to playlists_path
  end

  private
  def playlist_params
    params.require(:playlist).permit(
               :name,
               :description,  
               { song_ids: [] }                            
               )
  end

    def find_playlist
      if current_user.admin?
        @playlist = Playlist.find(params[:id])
      else
        @playlist = current_user.playlists.find(params[:id])
      end
    end

end
