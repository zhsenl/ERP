class AppBillDispatchRecordsController < ApplicationController
  # GET /app_bill_dispatch_records
  # GET /app_bill_dispatch_records.json
  def index
    @app_bill_dispatch_records = AppBillDispatchRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @app_bill_dispatch_records }
    end
  end

  # GET /app_bill_dispatch_records/1
  # GET /app_bill_dispatch_records/1.json
  def show
    @app_bill_dispatch_record = AppBillDispatchRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @app_bill_dispatch_record }
    end
  end

  # GET /app_bill_dispatch_records/new
  # GET /app_bill_dispatch_records/new.json
  def new
    @app_bill_dispatch_record = AppBillDispatchRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @app_bill_dispatch_record }
    end
  end

  # GET /app_bill_dispatch_records/1/edit
  def edit
    @app_bill_dispatch_record = AppBillDispatchRecord.find(params[:id])
  end

  # POST /app_bill_dispatch_records
  # POST /app_bill_dispatch_records.json
  def create
    @app_bill_dispatch_record = AppBillDispatchRecord.new(params[:app_bill_dispatch_record])

    respond_to do |format|
      if @app_bill_dispatch_record.save
        format.html { redirect_to @app_bill_dispatch_record, notice: 'App bill dispatch record was successfully created.' }
        format.json { render json: @app_bill_dispatch_record, status: :created, location: @app_bill_dispatch_record }
      else
        format.html { render action: "new" }
        format.json { render json: @app_bill_dispatch_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /app_bill_dispatch_records/1
  # PUT /app_bill_dispatch_records/1.json
  def update
    @app_bill_dispatch_record = AppBillDispatchRecord.find(params[:id])

    respond_to do |format|
      if @app_bill_dispatch_record.update_attributes(params[:app_bill_dispatch_record])
        format.html { redirect_to @app_bill_dispatch_record, notice: 'App bill dispatch record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @app_bill_dispatch_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_bill_dispatch_records/1
  # DELETE /app_bill_dispatch_records/1.json
  def destroy
    @app_bill_dispatch_record = AppBillDispatchRecord.find(params[:id])
    @app_bill_dispatch_record.destroy

    respond_to do |format|
      format.html { redirect_to app_bill_dispatch_records_url }
      format.json { head :no_content }
    end
  end
end
