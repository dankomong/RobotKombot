class JobsController < ApplicationController
  before_action :authorized?
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

end
