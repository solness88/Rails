class KobattersController < ApplicationController
  before_action :set_kobatter, only: [:show, :edit, :update, :destroy]
  def home
  end
  def index
    @kobatters = Kobatter.all.order(id: "DESC")
    @count = Kobatter.all.count
  end
  def new
    @kobatter = Kobatter.new
  end
  def create
    @kobatter = Kobatter.new(kobatter_params)
    if params[:back]
      render :new
    else
      if @kobatter.save
        redirect_to kobatters_path, notice:"つぶやきを作成しました！"
      else
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @kobatter.update(kobatter_params)
      redirect_to kobatters_path, notice:"つぶやきを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @kobatter.destroy
    redirect_to kobatters_path, notice:"ブログを削除しました！"
  end
  def confirm
    @kobatter = Kobatter.new(kobatter_params)
    render :new if @kobatter.invalid?
  end
  private
  def kobatter_params
    params.require(:kobatter).permit(:content)
  end
  def set_kobatter
    @kobatter = Kobatter.find(params[:id])
  end
end
