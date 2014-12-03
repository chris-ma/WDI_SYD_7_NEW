class PlaylistsController < ApplicationController


  
before_action :find_playlist, only: [:show, :edit, :destroy, :update]


  def index
    @playlists = Playlist.all 
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save 
      
      redirect_to playlist_path(@playlist) 
    else 
      render :new
    end
  end

  def show
    
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
    params.require(:playlist).permit(:name,
                                 :description,  
                                 { song_ids: [] }                            
                                )
  end

    def find_playlist
    @playlist = Playlist.find params[:id]
  end

end
