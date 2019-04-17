class CharactersController < ApplicationController

before_action :get_character_by_id, only: [:show, :edit, :update, :destroy]


def index
  @characters = Character.all
end


def new
  @character = Character.new
end


def create
  @character = Character.create(character_params)
  if character.valid?
  redirect_to character_path(@character)
else
  render :new
end
end

def update
  @character.update(character_params)
  if character.valid?
  redirect_to character_path(@character)
else
  render :edit
end
end



def destroy
  @character.destroy
  redirect_to characters_path
end






private


def get_character_by_id
    @character = Character.find(params[:id])
end




def character_params
  params.require(:character).permit(:name, :hp, :level, :physical_damage, :magical_damage, :armor, :user_id, :job_id)
end

end
