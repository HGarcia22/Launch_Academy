require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'csv'

set :bind, '0.0.0.0'

article_list = CSV.readlines('article_list.csv', headers: true)
binding.pry

get "/" do

  erb :index
end

get "/:article_title" do
  @article_title = param[:article_title]

erb :article_title
end
