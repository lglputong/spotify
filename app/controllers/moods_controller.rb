class MoodsController < ApplicationController
	def new
		@mood = Mood.new
	end

	def index
		@moods = Mood.all
	end

	def show
		@mood = Mood.find(params[:id])
		@songs = Song.where(:song_mood => @mood.name).all
	end

	def create
		@mood = Mood.new
		@mood.name = params[:mood][:name]
		@mood.description = params[:mood][:description]
		@mood.song_count = 0
		@mood.save!
		redirect_to :moods
	end

	def edit
		@mood = Mood.find(params[:id])
	end

	def update
		@mood = Mood.find(params[:id])
		@mood.name = params[:mood][:name]
		@mood.description = params[:mood][:description]
		@mood.song_count = 0
		@mood.save!
		redirect_to :moods
	end

	def destroy
		@mood = Mood.find(params[:id])
		@mood.destroy!
		redirect_to :moods
	end
end
