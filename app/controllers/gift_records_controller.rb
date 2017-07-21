class GiftRecordsController < ApplicationController
  before_action :set_gift_record, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  layout "gift_record"


  # GET /gift_records
  # GET /gift_records.json
  def index
    @gift_records = GiftRecord.all
    @me = current_user
  end

  # GET /gift_records/1
  # GET /gift_records/1.json
  def show
    @me = current_user
  end

  # GET /gift_records/new
  def new
    @gift_record = GiftRecord.new
    @me = current_user
  end

  # GET /gift_records/1/edit
  def edit
    @me = current_user
  end

  def logout
    sign_out current_user
    redirect_to free_Content_path
  end

  # POST /gift_records
  # POST /gift_records.json
  def create
    @me = current_user
    @gift_record = GiftRecord.new(gift_record_params)

    respond_to do |format|
      if @gift_record.save
        format.html { redirect_to @gift_record, notice: 'Gift record was successfully created.' }
        format.json { render :show, status: :created, location: @gift_record }
      else
        format.html { render :new }
        format.json { render json: @gift_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gift_records/1
  # PATCH/PUT /gift_records/1.json
  def update
    @me = current_user
    respond_to do |format|
      if @gift_record.update(gift_record_params)
        format.html { redirect_to @gift_record, notice: 'Gift record was successfully updated.' }
        format.json { render :show, status: :ok, location: @gift_record }
      else
        format.html { render :edit }
        format.json { render json: @gift_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_records/1
  # DELETE /gift_records/1.json
  def destroy
    @me = current_user
    @gift_record.destroy
    respond_to do |format|
      format.html { redirect_to gift_records_url, notice: 'Gift record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_record
      @gift_record = GiftRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_record_params
      params.require(:gift_record).permit(:name, :when, :gift, :notes)
    end
end
