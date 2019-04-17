class BattlesController < ApplicationController


def index
  @battles = Battle.all
end

def show
  @battle = Battle.find(params[:id])
  @boss = Boss.find(@battle.boss.id)
  @character = Character.find(@battle.character.id)
end


def create
  @battle = Battle.create(battle_params)
end






private

def battle_params
  params.require(:battle).permit(:name, :victory, :boss_id, :character)
end








end
