class CharactersController < ApplicationController

  before_action :get_character_by_id, only: [:show, :edit, :update, :destroy]
  before_action :authorized?


  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
    @job = Job.find(params[:character][:job_id])
    @character.job_id = @job.id
  end

  def show

  end


  def create
    # @user = User.find(session[:user_id])
    #
    # if @user.characters.count > 4
    #   redirect_to characters_path
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
