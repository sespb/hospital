class LeitosController < ApplicationController
  # GET /leitos
  # GET /leitos.json
  def index
    @leitos = Leito.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leitos }
    end
  end

  # GET /leitos/1
  # GET /leitos/1.json
  def show
    @leito = Leito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leito }
    end
  end

  # GET /leitos/new
  # GET /leitos/new.json
  def new
    @leito = Leito.new

    if params[:hospital]
      @leito.hospital = Hospital.find(params[:hospital])
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leito }
    end
  end

  # GET /leitos/1/edit
  def edit
    @leito = Leito.find(params[:id])
  end

  # POST /leitos
  # POST /leitos.json
  def create
    @leito = Leito.new(params[:leito])

    respond_to do |format|
      if @leito.save
        format.html { redirect_to @leito, notice: 'Leito was successfully created.' }
        format.json { render json: @leito, status: :created, location: @leito }
      else
        format.html { render action: "new" }
        format.json { render json: @leito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leitos/1
  # PUT /leitos/1.json
  def update
    @leito = Leito.find(params[:id])

    respond_to do |format|
      if @leito.update_attributes(params[:leito])
        format.html { redirect_to @leito, notice: 'Leito was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @leito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leitos/1
  # DELETE /leitos/1.json
  def destroy
    @leito = Leito.find(params[:id])
    @leito.destroy

    respond_to do |format|
      format.html { redirect_to leitos_url }
      format.json { head :ok }
    end
  end
end
