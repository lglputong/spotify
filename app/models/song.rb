class Song < ActiveRecord::Base
	belongs_to :mood

	validates :title, presence: true, uniqueness: true
	validates :artist, presence: true
	validates :album, presence: true
	validates :song_mood, presence: true
	validates :listen, presence: true
end
