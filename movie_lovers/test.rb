require 'imdb'

a = Imdb::Search.new("Star Trek")
#puts a.movies[0].poster



def search(word)
  n = 0
  while container.length < 10
    if movies.search[n].poster != nil
        container.push(Movie.new(a,b,c,d))
      end
      n += 1
    end
end

  # def search_by_word(word)
  #   movies = []
  #   movies_search = Imdb::Search.new(word)
  #   n = 0
  #   while movies.size < 9
  #     if movies_search.movies[n].poster != nil
  #       movies << {
  #                 id: n,
  #                 title: movies_search.movies[n].title,
  #                 year: movies_search.movies[n].year,
  #                 poster: movies_search.movies[n].poster,
  #                 director: movies_search.movies[n].director
  #                }
  #     end
  #     n += 1
  #   end
  #   movies
  # end