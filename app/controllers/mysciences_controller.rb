class MysciencesController < ApplicationController
  before_action :set_myscience, only: %i[ show edit update destroy ]

  # GET /mysciences or /mysciences.json
  def index
    @mysciences = Myscience.all
  end

  # GET /mysciences/1 or /mysciences/1.json
  def show
  end

  # GET /mysciences/new
  def new
    @myscience = Myscience.new
  end

  # GET /mysciences/1/edit
  def edit
  end

  # POST /mysciences or /mysciences.json
  def create
    @myscience = Myscience.new(myscience_params)

    respond_to do |format|
      if @myscience.save
        format.html { redirect_to myscience_url(@myscience), notice: "Myscience was successfully created." }
        format.json { render :show, status: :created, location: @myscience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myscience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mysciences/1 or /mysciences/1.json
  def update
    respond_to do |format|
      if @myscience.update(myscience_params)
        format.html { redirect_to myscience_url(@myscience), notice: "Myscience was successfully updated." }
        format.json { render :show, status: :ok, location: @myscience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myscience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mysciences/1 or /mysciences/1.json
  def destroy
    @myscience.destroy

    respond_to do |format|
      format.html { redirect_to mysciences_url, notice: "Myscience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myscience
      @myscience = Myscience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myscience_params
      params.require(:myscience).permit(:title)
    end
end
