class GerenciasController < ApplicationController
  # GET /gerencias
  # GET /gerencias.json
  def index
    @gerencias = Gerencia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gerencias }
    end
  end

  # GET /gerencias/1
  # GET /gerencias/1.json
  def show
    @gerencia = Gerencia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gerencia }
    end
  end

  # GET /gerencias/new
  # GET /gerencias/new.json
  def new
    @gerencia = Gerencia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gerencia }
    end
  end

  # GET /gerencias/1/edit
  def edit
    @gerencia = Gerencia.find(params[:id])
  end

  # POST /gerencias
  # POST /gerencias.json
  def create
    @gerencia = Gerencia.new(params[:gerencia])

    respond_to do |format|
      if @gerencia.save
        format.html { redirect_to @gerencia, notice: 'Gerencia was successfully created.' }
        format.json { render json: @gerencia, status: :created, location: @gerencia }
      else
        format.html { render action: "new" }
        format.json { render json: @gerencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gerencias/1
  # PUT /gerencias/1.json
  def update
    @gerencia = Gerencia.find(params[:id])

    respond_to do |format|
      if @gerencia.update_attributes(params[:gerencia])
        format.html { redirect_to @gerencia, notice: 'Gerencia was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gerencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gerencias/1
  # DELETE /gerencias/1.json
  def destroy
    @gerencia = Gerencia.find(params[:id])
    @gerencia.destroy

    respond_to do |format|
      format.html { redirect_to gerencias_url }
      format.json { head :ok }
    end
  end
end
