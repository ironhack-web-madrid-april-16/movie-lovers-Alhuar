require 'imdb'
require_relative 'movie.rb'

class Searcher
	 def initialize()
	 	 @movie_list = []
	 end

	def search_by_word(word)
		search = Imdb::Search.new(word)
		n = 0
		while @movie_list.length < 9
			if search.movies[n].poster != nil
				@movie_list.push(Movie.new(search.movies[n].title, search.movies[n].id, search.movies[n].rating, search.movies[n].poster, search.movies[n].year))
			end
			n += 1
		end
		# @movie_list.each do |movie|
		# 	 puts "#{movie.title}"
		# 	end
	end
end

#searcher1 = Searcher.new



