class SongsController < ApplicationController

  def index
    if params[:album_id]
      @album = Album.find(params[:album_id])
      @songs = @album.songs
      render json: @songs, status: :ok
    else
      @songs = Song.all
      render json: @songs, status: :ok
    end
  end

  def create
    @song = Song.new(song_params)
    @song.album = Album.find(params[:album_id])
    if @song.save
      render json: @song, status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      render json: @song, status: :ok, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    head :no_content
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist, :duration)
  end

end
