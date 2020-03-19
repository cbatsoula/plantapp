class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params[:username][:name])
    if @owner.valid?
      @owner.save
      redirect_to @owner
    else
      flash[:notice] = @owner.errors.messages[0]
      render :new
    end
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)
    redirect_to @owner
  end

  def destroy
    byebug
  end

  private
  def owner_params
    params.require(:owner).permit(:username, :name, :location)
  end
end
