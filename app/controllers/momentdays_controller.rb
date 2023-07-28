class MomentdaysController < ApplicationController
  before_action :set_momentday, only: %i[ show edit update destroy ]

  # GET /momentdays or /momentdays.json
  def index
    @momentdays = Momentday.all
  end

  # GET /momentdays/1 or /momentdays/1.json
  def show
  end

  # GET /momentdays/new
  def new
    @momentday = Momentday.new
  end

  # GET /momentdays/1/edit
  def edit
  end

  # POST /momentdays or /momentdays.json
  def create
    @momentday = Momentday.new(momentday_params)

    respond_to do |format|
      if @momentday.save
        format.html { redirect_to momentday_url(@momentday), notice: "Momentday was successfully created." }
        format.json { render :show, status: :created, location: @momentday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @momentday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /momentdays/1 or /momentdays/1.json
  def update
    respond_to do |format|
      if @momentday.update(momentday_params)
        format.html { redirect_to momentday_url(@momentday), notice: "Momentday was successfully updated." }
        format.json { render :show, status: :ok, location: @momentday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @momentday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /momentdays/1 or /momentdays/1.json
  def destroy
    @momentday.destroy

    respond_to do |format|
      format.html { redirect_to momentdays_url, notice: "Momentday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_momentday
      @momentday = Momentday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def momentday_params
      params.require(:momentday).permit(:name, :image,:pic_ids=>[])
    end
end
