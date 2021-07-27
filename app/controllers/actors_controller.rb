class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render( { :template => "actors_templates/index.html.erb"})
  end

  def actor_details
    # params looks like {"an_id"=>"42"}
    
    the_id = params.fetch("an_id").to_i
    @the_actor = Actor.where({ :id => the_id}).at(0)
    @filmography_actor = Character.where({ :actor_id => @the_actor.id })

    render( { :template => "actors_templates/show.html.erb"})
  end

end