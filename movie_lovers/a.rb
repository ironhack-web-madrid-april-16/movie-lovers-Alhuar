require 'imdb'	
cont = []
search = Imdb::Search.new('that')
n = 0
while cont.length < 10
	if search.movies[n].poster != nil
		cont.push(search.movies[n])
	end
	n += 1
end

cont.each do |movie|
	puts "#{movie.title}------#{movie.rating}-------#{movie.year} "
end