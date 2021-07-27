class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render( { :template => "movies_templates/index.html.erb"})
  end

  def movie_details
    # params looks like {"an_id"=>"42"}
    

    the_id = params.fetch("an_id").to_i
    @the_movie = Movie.where({ :id => the_id}).at(0)
    @list_of_movies = Movie.all
    #@filmography = Movie.where({ :director_id => @the_director.id })

    render( { :template => "movies_templates/show.html.erb"})
  end

end
