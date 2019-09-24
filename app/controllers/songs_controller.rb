class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
    end

    def create
      @song = Song.new(song_params)
      if @song.valid?
        @song.save
        redirect_to song_path(@song)
      else
        render :new
      end
    end

    def edit
      @song = Song.find_by_id(params[:id])
    end

    def show
      @song = Song.find_by_id(params[:id])
    end

  private
    def song_params
      params.require(:song).permit(:artist_name, :genre, :release_year, :released, :title)
    end
end
