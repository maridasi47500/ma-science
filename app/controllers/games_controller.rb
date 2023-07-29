class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy circleobjects materials battery word moment tick stuff ]

  # GET /games or /games.json
  def index
    @games = Game.all
  end

  # GET /games/1 or /games/1.json
  def show
  end
def word
  @game.gamehaswords.new
end
  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to game_url(@game), notice: "Game was successfully created." }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to game_url(@game), notice: "Game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        p @game.errors
        p @game.errors.messages
        format.html { render @game.errors.messages.to_a[0][0], status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end

  rescue => e
        p "ERREUR", e.message
        p @game.errors
    render :edit
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    @game.destroy

    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:myscience_id, :title, :content, :description,:crossorticks_attributes=>{},:gamehaswords_attributes=>{},:circleobjects_attributes=>{},:pic_ids=>[],:materials_image_ids=>[],:mystuffhaspic_ids=>[],:stuff_ids=>[],:image_ids=>[])
    end
end
