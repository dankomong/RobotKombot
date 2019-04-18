class BattlesController < ApplicationController
  before_action :authorized?


  def index
    @battles = Battle.all
  end

  def new
    @battle = Battle.new(params[:id])
    @character = Character.find(params[:battle][:character_id])
    @battle.character_id = @character.id
  end

  def show
    @battle = Battle.find(params[:id])
    @percent1 = "100"
    @percent2 = "100"
    # @boss = Boss.find(@battle.boss)
    # @character = Character.find(@battle.character.id)
  end

  def create
    @battle = Battle.create(battle_params(:character_id, :boss_id))
    redirect_to battle_path(@battle)
  end


  def fight
    @battle = Battle.find(params[:id])
    @character = Character.find(@battle.character_id)

    @percent1 = (params[:percent1].to_i - rand(1..20)).to_s
    @percent2 = (params[:percent2].to_i - rand(1..20)).to_s
    if @percent1.to_i <= 0 || @percent2.to_i <= 0
      if @percent1.to_i <= 0
        @percent1 = "0"
      elsif @percent2.to_i <= 0
        @percent2 = "0"
      end

      render :show
    else
      render :show
    end

  end

  private

  def battle_params(*args)
    params.require(:battle).permit(*args)
  end



end
