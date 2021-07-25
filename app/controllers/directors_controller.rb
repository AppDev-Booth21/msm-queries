class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render( { :template => "directors_templates/index.html.erb"})
  end

  def wisest
    @oldest_director = Director.all.where.not({ :dob => nil}).order({ :dob => :asc }).at(0)
    render( { :template => "directors_templates/eldest.html.erb"})
  end
end