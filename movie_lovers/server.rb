require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'pry'
require_relative './lib/movie.rb'
require_relative './lib/search.rb'
require 'imdb'





 get '/' do
   erb(:index)
 end

post '/quiz' do
@word = params[:movie_word]
@searcher = Searcher.new.search_by_word(@word)
erb(:quiz)
end












=begin
@@courses = [
  { id: 1, name: 'Introduction to ruby', level: 'false' },
  { id: 2, name: 'Introduction to Javascript', level: 'false' },
  { id: 3, name: 'Introduction to HTML & CSS', level: 'false' },
  { id: 4, name: 'Ruby on Rails', level: 'true' },
  { id: 5, name: 'AngularJS', level: 'true' },
  { id: 6, name: 'Hashes over Arrays over Hashes over Hashes over Arrays', level: 'true' }
]

get '/' do
  erb(:index)
end

post '/login' do
  # if params[:student_name]
  # redirect ()
  session[:name] = params[:student_name]
  session[:date] = params[:student_birth_date]
  session[:experience] = params[:student_experience]
  # binding.pry
  session[:email] = params[:student_email]
  Student.new(session[:name], session[:date], session[:experience], session[:email])
  redirect '/show_courses'

  # if session[:experience] == 'true'
  #   redirect '/profile_exp'
  # elsif
  #   redirect '/profile_newbie'
  # end
end

get '/show_courses' do
  @name = session[:name]
  @your_courses = @@courses.select do |course|
    session[:experience] == course[:level]
  end

  erb(:show_courses)
end

# get '/profile_newbie' do
#   @name = session[:name]
#   @age = session[:date]
#   erb(:profile_newbie)
# end

# get '/profile_exp' do
#   @name = session[:name]
#   erb(:profile_exp)
# end

post '/reset' do
  session[:name] = nil
  session[:date] = nil
  session[:experience] = nil
  session[:email] = nil
  redirect '/'
end
=end