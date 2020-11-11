class MentersController < ApplicationController
  before_action :set_find,only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    @menters = Menter.all.order("created_at DESC")
  end

  def new
    @menter = Menter.new
  end

  def create
    @menter = Menter.create(menter_params)
    if @menter.valid?
      @menter.save
       redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @menter.update(menter_params)
      redirect_to root_path(@menter.id)
    else
      render :edit
    end
  end

  private
  def menter_params
    params.require(:menter)
    .permit(:name, :job, :respect, :norespect, :influence, :get, :user_id)
    .merge(user_id: current_user.id)
  end

  def set_find
    @menter = Menter.find(params[:id])
  end
end
