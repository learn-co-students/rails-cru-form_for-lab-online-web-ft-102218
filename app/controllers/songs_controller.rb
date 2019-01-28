class SongsController < ApplicationController
    before_action :set_song, only: [:show, :edit, :update]
    
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def show
        @artist = Artist.find_by_id(@song.artist.id)
        @genre = Genre.find_by_id(@song.genre.id)
    end

    def edit
    end

    def update
        @song.update(song_params(:name))
        redirect_to song_path(@song)
    end

    private
        def set_song
            @song = Song.find_by_id(params[:id])
        end

		def song_params(*args)
			params.require(:song).permit(*args)
		end
end
