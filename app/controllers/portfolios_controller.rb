class PortfoliosController < ApplicationController
  before_action :set_item, only: [:delete, :show, :edit, :update]

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolios_path
    else
      return 'Error'
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Successfully updated'}
      else
        format.html { render :edit}
      end
    end
  end

  def delete
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

  def set_item
    @portfolio_item ||= Portfolio.find(params[:id])
  end
end
