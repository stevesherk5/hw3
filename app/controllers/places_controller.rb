class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
  end

  def create
    # start with a new Place
    @place = Place.new
    # assign user-entered form data to place's columns
    @place["name"] = params["name"]
    # save Place row
    @place.save
    # redirect user
    redirect_to "/places"
  end

  def show
    @place = Place.find_by({"id"=>params["id"]})
    @entries = Entry.all
  end

end
