require File.expand_path '../spec_helper', __FILE__
require 'imdb'

RSpec.describe "server" do
  let (:movie) {Movie.new('Star Trek', 1, 8.0, 'www.elpais.es', '1998')} 
  describe "Imdb gem search" 
  it "searchs into imdb database and returns the parameters required of one movie"  do
  expect(Imdb::Search.new(movie).movies[0].rating).to eq(8.0)
  end
end

RSpec.describe "searcher" do
  let (:movie) {Movie.new('Star Trek', 1, 8.0, nil, '1998')} 
  let (:search) {Imdb::Search.new(movie)}
  let (:searcher) {Searcher.new.search_by_word(search)}
  describe "search_by_word"
  it "searchs a movie by the user´s input only if that result has a poster" do
    
  expect(searcher.movie_list.length).to eq(0)
  end
end



=begin
RSpec.describe 'Blog' do
  let (:post) {Post.new('title', '2016-04-30', 'abcdefg')}
  let (:blog) {Blog.new}
  describe 'add post method'
  it "adds a post to our blog array when called" do
    myblog_length = blog.post_list.length
  expect(blog.add_post(post).length).to eq(myblog_length+1)  
  end
   it "shows an array containing all of the posts inside the blog" do
    expect(blog.post_list.class).to be(Array.new.class)
  end
  it "sorts the post by their date from newest to latest" do
    post2 = Post.new('title22', '2012-03-10', 'edfg')
    blog.add_post(post)
    blog.add_post(post2)
    sorted_posts = blog.latest_posts
    expect(sorted_posts.index(post)- sorted_posts.index(post2)).to eq(-1)
  end
end

  RSpec.describe "Post" do
    describe 'post method'
    let (:post) {Post.new('title', '2016-04-30', 'abcdefg')}
    it "shows the content of a post when called" do
     expect(post.text).to eq('abcdefg')
   end
   it "shows the date of a post when called" do
     expect(post.date).to eq('2016-04-30')
   end
   it "shows the title of a post when called" do
     expect(post.title).to eq('title')
   end
  end

=end
