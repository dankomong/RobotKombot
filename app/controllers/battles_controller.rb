class BattlesController < ApplicationController


def index
  @battles = Battle.all
end

def show

  @battle = Battle.find(params[:id])
  @percent1 = "100"
  @percent2 = "100"
  # @boss = Boss.find(@battle.boss)
  # @character = Character.find(@battle.character.id)
end

def create
  @battle = Battle.create(battle_params)
end

def fight
  @battle = Battle.find(params[:id])
  @character = Character.find(@battle.character_id)
  @percent1 = (params[:percent1].to_i - rand(1..20)).to_s
  @percent2 = (params[:percent2].to_i - rand(1..20)).to_s
  if @percent1.to_i <= 0
    redirect_to characters_path
  elsif @percent2.to_i <= 0
    redirect_to characters_path
  else
    render :show
  end

end

private

def battle_params
  params.require(:battle).permit(:name, :victory, :boss_id, :character)
end








end
