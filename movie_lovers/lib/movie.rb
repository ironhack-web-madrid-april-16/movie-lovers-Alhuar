class Movie
  attr_reader :title, :id, :rating, :poster, :year 

  def initialize(title, id, rating, poster, year)
  	@title = title
		@id = id
		@rating = rating
		@poster = poster    
  	@year = year
  end
end
