class SongsController < ApplicationController
	def new
		@song = Song.new
	end

	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def create
		@song = Song.new
		@song.title = params[:song][:title]
		@song.artist = params[:song][:artist]
		@song.album = params[:song][:album]
		@song.album_art = params[:song][:album_art]
		if @song.album_art == "" then
			@song.album_art = "http://musicunderfire.com/wp-content/uploads/2012/06/No-album-art-itunes.jpg"
		end
		@song.song_mood = params[:song][:song_mood]
		@song.listen = params[:song][:listen]
		@song.posted_on = Date.today
		if @song.valid? then
			@song.save!
		end
		redirect_to :songs
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
		@song.title = params[:song][:title]
		@song.artist = params[:song][:artist]
		@song.album = params[:song][:album]
		@song.album_art = params[:song][:album_art]
		@song.song_mood = params[:song][:song_mood]
		@song.listen = params[:song][:listen]
		@song.posted_on = Date.today
		@song.save!
		redirect_to :songs
	end

	def destroy
		@song = Song.find(params[:id])
		@song.destroy!
		redirect_to :songs
	end
end
