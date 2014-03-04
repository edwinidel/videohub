class ActoresController < ApplicationController
  # GET /actores
  # GET /actores.json
  def index
    @actores = Actore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @actores }
    end
  end

  # GET /actores/1
  # GET /actores/1.json
  def show
    @actore = Actore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @actore }
    end
  end

  # GET /actores/new
  # GET /actores/new.json
  def new
    @actore = Actore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @actore }
    end
  end

  # GET /actores/1/edit
  def edit
    @actore = Actore.find(params[:id])
  end

  # POST /actores
  # POST /actores.json
  def create
    @actore = Actore.new(params[:actore])

    respond_to do |format|
      if @actore.save
        format.html { redirect_to @actore, notice: 'Actore was successfully created.' }
        format.json { render json: @actore, status: :created, location: @actore }
      else
        format.html { render action: "new" }
        format.json { render json: @actore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /actores/1
  # PUT /actores/1.json
  def update
    @actore = Actore.find(params[:id])

    respond_to do |format|
      if @actore.update_attributes(params[:actore])
        format.html { redirect_to @actore, notice: 'Actore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @actore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actores/1
  # DELETE /actores/1.json
  def destroy
    @actore = Actore.find(params[:id])
    @actore.destroy

    respond_to do |format|
      format.html { redirect_to actores_url }
      format.json { head :no_content }
    end
  end
end
