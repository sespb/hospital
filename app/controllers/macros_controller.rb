class MacrosController < ApplicationController
  # GET /macros
  # GET /macros.json
  def index
    @macros = Macro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @macros }
    end
  end

  # GET /macros/1
  # GET /macros/1.json
  def show
    @macro = Macro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @macro }
    end
  end

  # GET /macros/new
  # GET /macros/new.json
  def new
    @macro = Macro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @macro }
    end
  end

  # GET /macros/1/edit
  def edit
    @macro = Macro.find(params[:id])
  end

  # POST /macros
  # POST /macros.json
  def create
    @macro = Macro.new(params[:macro])

    respond_to do |format|
      if @macro.save
        format.html { redirect_to @macro, notice: 'Macro was successfully created.' }
        format.json { render json: @macro, status: :created, location: @macro }
      else
        format.html { render action: "new" }
        format.json { render json: @macro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /macros/1
  # PUT /macros/1.json
  def update
    @macro = Macro.find(params[:id])

    respond_to do |format|
      if @macro.update_attributes(params[:macro])
        format.html { redirect_to @macro, notice: 'Macro was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @macro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /macros/1
  # DELETE /macros/1.json
  def destroy
    @macro = Macro.find(params[:id])
    @macro.destroy

    respond_to do |format|
      format.html { redirect_to macros_url }
      format.json { head :ok }
    end
  end
end
