class ChecklistsController < ApplicationController
  def index
  end

  def new
    @checklist = Checklist.new
  end

  def create
    @checklist = Checklist.new 

    @checklist.name = params["name"]
    @checklist.birth_year = params["birth_year"]

    lived_in = ""
    for i in 1..NUM_LIVED_IN_STATES
      unless params["state_#{i}"].blank?
        lived_in << params["state_#{i}"]
        lived_in << ","
      end
    end
    @checklist.lived_in = lived_in
    
    unless params["death_year"].blank? 
      @checklist.death_year = params["death_year"]
    end

    if @checklist.valid?
      @checklist.save!
      redirect_to checklist_path(@checklist)
    else
      render :action => "new"
    end
  end

  def show
    @checklist = Checklist.find(params[:id])
  end
end