class Dict::CountriesController < ApplicationController
  # GET /dict/countries
  # GET /dict/countries.json
  def index
    @dict_countries = Dict::Country.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dict_countries }
    end
  end

  # GET /dict/countries/1
  # GET /dict/countries/1.json
  def show
    @dict_country = Dict::Country.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dict_country }
    end
  end

  # GET /dict/countries/new
  # GET /dict/countries/new.json
  def new
    @dict_country = Dict::Country.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dict_country }
    end
  end

  # GET /dict/countries/1/edit
  def edit
    @dict_country = Dict::Country.find(params[:id])
  end

  # POST /dict/countries
  # POST /dict/countries.json
  def create
    @dict_country = Dict::Country.new(params[:dict_country])

    respond_to do |format|
      if @dict_country.save
        format.html { redirect_to @dict_country, notice: 'Country was successfully created.' }
        format.json { render json: @dict_country, status: :created, location: @dict_country }
      else
        format.html { render action: "new" }
        format.json { render json: @dict_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dict/countries/1
  # PUT /dict/countries/1.json
  def update
    @dict_country = Dict::Country.find(params[:id])

    respond_to do |format|
      if @dict_country.update_attributes(params[:dict_country])
        format.html { redirect_to @dict_country, notice: 'Country was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dict_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dict/countries/1
  # DELETE /dict/countries/1.json
  def destroy
    @dict_country = Dict::Country.find(params[:id])
    @dict_country.destroy

    respond_to do |format|
      format.html { redirect_to dict_countries_url }
      format.json { head :no_content }
    end
  end
end
