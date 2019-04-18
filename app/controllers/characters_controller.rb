class CharactersController < ApplicationController

  before_action :get_character_by_id, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :authorized?
=======
>>>>>>> 4204aa8f284ce552cc631ef83819a42c47b535a5


  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

<<<<<<< HEAD
  def create
    @character = Character.new(character_params(:name, :job_id))
    @character.user_id = session[:user_id]
    @character.update_stats
    if @character.valid?

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
=======
  def show

  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params(:name, :job_id))
    @character.user_id = session[:user_id]
    @character.update_stats
    if @character.valid?
      redirect_to character_path(@character)
    else
      render :new
    end
  end



  def edit
  end

  def update
    @character.update(character_params(:name))
    if @character.valid?
      redirect_to character_path(@character)
    else
      render :edit
    end
  end
>>>>>>> 4204aa8f284ce552cc631ef83819a42c47b535a5



  def destroy
    @character.destroy
    redirect_to characters_path
  end


  private


<<<<<<< HEAD
  def get_character_by_id
    @character = Character.find(params[:id])
  end

=======




  def get_character_by_id
    @character = Character.find(params[:id])
  end




>>>>>>> 4204aa8f284ce552cc631ef83819a42c47b535a5
  def character_params(*args)
    params.require(:character).permit(*args)
  end



end
