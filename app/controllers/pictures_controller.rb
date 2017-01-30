class PicturesController < ApplicationController
  before_action :authenticate_user!

  def new
    @picture = Picture.new
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if @picture.save
      redirect_to(root_path, notice: 'Picture was successfully created.')
    else
      render(action: 'new')
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:image)
  end
end
