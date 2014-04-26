class ChecklistsController < ApplicationController
  def index
  end

  def new
    @checklist = Checklist.new
  end

  def create
    c = Checklist.new 

    c.first_middle_name = params["first_middle_name"]
    c.last_name = params["last_name"]
    c.birth_year = params["birth_year"]
    c.birth_location = params["birth_location"]

    lived_in = ""
    if params["state_1"]
      lived_in << params["state_1"]
    end
    if params["state_2"]
      lived_in << ","
      lived_in << params["state_2"]
    end
    if params["state_3"]
      lived_in << ","
      lived_in << params["state_3"]
    end
    c.lived_in = lived_in
    
    c.death_year = params["death_year"]
    c.death_location = params["death_location"]

    c.save!

    redirect_to checklist_path(c)
  end

  def show
    @checklist = Checklist.find(params[:id])
  end
end