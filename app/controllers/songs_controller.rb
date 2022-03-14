class SongsController < ApplicationController

  def index
    song = Song.all
    render json: song.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def create
    song = Song.new(
    title: params[:input_title],
    album: params[:input_album],
    artist: params[:input_artist],
    year: params[:input_year])

    song.save

    render json: song.as_json
  end

  def update
    song = Song.find_by(id: params[:id])

    song.title = params[:title]
    song.album = params[:album]
    song.artist = params[:artist]
    song.year = params[:year]

    song.save

    render json: song.as_json
  end

end
