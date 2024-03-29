class GameEventsController < ApplicationController
  before_action :set_game_event, only: [:show, :edit, :update, :destroy]

  # GET /game_events
  # GET /game_events.json
  def index
    @game_events = GameEvent.all
  end

  # GET /game_events/1
  # GET /game_events/1.json
  def show
  end

  # GET /game_events/new
  def new
    @game_event = GameEvent.new
    @leagues = League.all
  end

  # GET /game_events/1/edit
  def edit
    @leagues = League.all
  end

  # POST /game_events
  # POST /game_events.json
  def create
    @game_event = GameEvent.new(game_event_params)

    respond_to do |format|
      if @game_event.save
        format.html { redirect_to @game_event, notice: 'Game event was successfully created.' }
        format.json { render :show, status: :created, location: @game_event }
      else
        format.html { render :new }
        format.json { render json: @game_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_events/1
  # PATCH/PUT /game_events/1.json
  def update
    respond_to do |format|
      if @game_event.update(game_event_params)
        format.html { redirect_to @game_event, notice: 'Game event was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_event }
      else
        format.html { render :edit }
        format.json { render json: @game_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_events/1
  # DELETE /game_events/1.json
  def destroy
    @game_event.destroy
    respond_to do |format|
      format.html { redirect_to game_events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_event
      @game_event = GameEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_event_params
      params.require(:game_event).permit(
        :title, :start_date, :end_date, :location,
        :home_team_id, :away_team_id, :home_score, :away_score, :league_id
      )
    end
end
