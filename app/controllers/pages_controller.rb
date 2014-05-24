class PagesController < ApplicationController
	def index
		@songs = Song.last(5)
	end
end
