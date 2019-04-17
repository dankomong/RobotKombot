class BattlesController < ApplicationController


def index
  @battles = Battle.all
end

def show

  @battle = Battle.find(params[:id])
  @percent = "100"
  # @boss = Boss.find(@battle.boss)
  # @character = Character.find(@battle.character.id)
end

def create
  @battle = Battle.create(battle_params)
end

def fight
  @battle = Battle.find(params[:id])
  @percent = (params[:percent].to_i - rand(1..20)).to_s
  if @percent.to_i <= 0
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
