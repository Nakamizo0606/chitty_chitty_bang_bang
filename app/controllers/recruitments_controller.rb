class RecruitmentsController < ApplicationController
  before_action :authenticate_user!,only: [:new, :edit]
  before_action :set_item,only: [:show, :edit, :update, :destroy ]

  def index
    @recruitments = Recruitment.all
  end

  def new
    @recruitment = current_user.recruitments.build
    if @recruitment.save
      redirect_to root_path
    else
      render :new
    end  
  end

  def create
    @recruitment = current_user.recruitments.build(recruitment_params)
    if @recruitment.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to new_user_session_path unless user_signed_in? && current_user.id == @recruitment.user_id
  end


  def update
    if @recruitment.update(recruitment_params)
      redirect_to recruitment_path(@recruitment.id)
    else
      render :edit
    end
  end 

  def destroy
    
    redirect_to root_path if current_user.id != @recruitment.user_id
    @recruitment.destroy
    redirect_to root_path
  end

  def merit
  end



  private

  def set_item
    @recruitment = Recruitment.find(params[:id])
  end

  def recruitment_params
    params.require(:recruitment).permit([
      :name,
      :date,
      :info, 
      :area_id, 
      :salary, 
      :time_start, 
      :time_finish, 
      :station, 
      :phone, 
      :genre_id, 
      :image, 
      :place
    ])
  end  

end
