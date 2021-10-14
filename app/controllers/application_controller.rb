class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/netflix_originals" do
    NetflixOriginal.all.to_json
  end
  get "/netflix_originals/:id" do
    movie = NetflixOriginal.find(params[:id])
    movie.to_json
  end

  get "/netflix_original_comments" do
    NetflixOriginalsComment.all.to_json
  end

  get "/trending" do
    Trending.all.to_json
  end
  get "/trending/:id" do
    movie = Trending.find(params[:id])
    movie.to_json
  end

  get "/top_rated" do 
    TopRated.all.to_json
  end
  get "/top_rated/:id" do
    movie = TopRated.find(params[:id])
    movie.to_json
  end

  get "/action" do 
    Action.all.to_json
  end
  get "/action/:id" do
    movie = Action.find(params[:id])
    movie.to_json
  end

  get "/comedy" do
    Comedy.all.to_json
  end
  get "/comedy/:id" do
    movie = Comedy.find(params[:id])
    movie.to_json
  end

  get "/horror" do
    Horror.all.to_json
  end
  get "/horror/:id" do
    movie = Horror.find(params[:id])
    movie.to_json
  end

  get "/romance" do
    Romance.all.to_json
  end
  get "/romance/:id" do
    movie = Romance.find(params[:id])
    movie.to_json
  end

  get "/documentaries" do
    Documentary.all.to_json
  end
  get "/documentaries/:id" do
    movie = Documentary.find(params[:id])
    movie.to_json
  end


end
