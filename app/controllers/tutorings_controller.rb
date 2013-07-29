class TutoringsController < ApplicationController
  # GET /tutorings
  # GET /tutorings.json
  def index
    @tutorings = Tutoring.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutorings }
    end
  end

  # GET /tutorings/1
  # GET /tutorings/1.json
  def show
    @tutoring = Tutoring.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutoring }
    end
  end

  # GET /tutorings/new
  # GET /tutorings/new.json
  def new
    @tutoring = Tutoring.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutoring }
    end
  end

  # GET /tutorings/1/edit
  def edit
    @tutoring = Tutoring.find(params[:id])
  end

  # POST /tutorings
  # POST /tutorings.json
  def create
    @tutoring = Tutoring.new(params[:tutoring])

    respond_to do |format|
      if @tutoring.save
        format.html { redirect_to @tutoring, notice: 'Tutoring was successfully created.' }
        format.json { render json: @tutoring, status: :created, location: @tutoring }
      else
        format.html { render action: "new" }
        format.json { render json: @tutoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tutorings/1
  # PUT /tutorings/1.json
  def update
    @tutoring = Tutoring.find(params[:id])

    respond_to do |format|
      if @tutoring.update_attributes(params[:tutoring])
        format.html { redirect_to @tutoring, notice: 'Tutoring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorings/1
  # DELETE /tutorings/1.json
  def destroy
    @tutoring = Tutoring.find(params[:id])
    @tutoring.destroy

    respond_to do |format|
      format.html { redirect_to tutorings_url }
      format.json { head :no_content }
    end
  end
end
