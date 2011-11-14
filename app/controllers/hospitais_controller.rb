class HospitaisController < ApplicationController
  # GET /hospitais
  # GET /hospitais.json
  def index
    @search = Hospital.search(params[:search])
    @hospitais = @search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hospitais }
    end
  end

  # GET /hospitais/1
  # GET /hospitais/1.json
  def show
    @hospital = Hospital.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hospital }
    end
  end

  # GET /hospitais/new
  # GET /hospitais/new.json
  def new
    @hospital = Hospital.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hospital }
    end
  end

  # GET /hospitais/1/edit
  def edit
    @hospital = Hospital.find(params[:id])
  end

  # POST /hospitais
  # POST /hospitais.json
  def create
    @hospital = Hospital.new(params[:hospital])

    respond_to do |format|
      if @hospital.save
        format.html { redirect_to @hospital, notice: 'Hospital was successfully created.' }
        format.json { render json: @hospital, status: :created, location: @hospital }
      else
        format.html { render action: "new" }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hospitais/1
  # PUT /hospitais/1.json
  def update
    @hospital = Hospital.find(params[:id])

    respond_to do |format|
      if @hospital.update_attributes(params[:hospital])
        format.html { redirect_to @hospital, notice: 'Hospital was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitais/1
  # DELETE /hospitais/1.json
  def destroy
    @hospital = Hospital.find(params[:id])
    @hospital.destroy

    respond_to do |format|
      format.html { redirect_to hospitais_url }
      format.json { head :ok }
    end
  end
end
