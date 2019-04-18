class CharactersController < ApplicationController

  before_action :get_character_by_id, only: [:show, :edit, :update, :destroy]


  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    byebug
    @character = Character.create(character_params(:name, :job_id))
    byebug
    if @character.job_id == 1
      @character.update(
        hp: 150,
        level: 1,
        physical_damage: 5,
        magical_damage: 1,
        armor: 4,
        user_id: session[:user_id],
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSoBb0m_DErSwVWvEV8azzy7avi-giU9Nu_Ec8yNs8WQDG8F9pPg")
    elsif @character.job_id == 2
      @character.update(
      hp: 110,
      level: 1,
      physical_damage: 0,
      magical_damage: 6,
      armor: 2,
      user_id: session[:user_id],
      image_url: "https://vignette.wikia.nocookie.net/kidicarus/images/7/73/Uprising_lady_palutena_e3_2011_press_kit.png/revision/latest/scale-to-width-down/300?cb=20160122055951")
    elsif @character.job_id == 3
      @character.update(
      hp: 120,
      level: 1,
      physical_damage: 3,
      magical_damage: 3,
      armor: 3,
      user_id: session[:user_id],
      image_url: "https://gamepedia.cursecdn.com/zelda_gamepedia_en/thumb/e/e5/OoT_Sheik_Artwork.png/1200px-OoT_Sheik_Artwork.png")
    elsif @character.job_id == 4
      @character.update(
      hp: 95,
      level: 1,
      physical_damage: 4,
      magical_damage: 2,
      armor: 2,
      user_id: session[:user_id],
      image_url: "https://i.dlpng.com/static/png/428884_thumb.png")
    end
    byebug
    if @character.valid?
      byebug
      redirect_to character_path(@character)
    else
      render :new
    end
  end

  def show

  end

  # def update
  #   @character.update(character_params)
  #   if character.valid?
  #   redirect_to character_path(@character)
  # else
  #   render :edit
  # end
  # end



  def destroy
    @character.destroy
    redirect_to characters_path
  end


  private


  def get_character_by_id
    @character = Character.find(params[:id])
  end

  def character_params(*args)
    params.require(:character).permit(*args)
  end



end
