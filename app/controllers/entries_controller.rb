class EntriesController < ApplicationController

  def new
    @places = Place.all
  end

  def create
    # start with a new entry
    @entry = Entry.new
    # assign user-entered form data to entry's columns
    @entry["title"] = params["title"]
    @entry["posted_on"] = params["posted_on"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["place_id"]
    # save entry row
    @entry.save
    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end


end
