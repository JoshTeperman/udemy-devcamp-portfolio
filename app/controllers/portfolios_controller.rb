class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolios_path
    else
      return 'Error'
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end


  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
