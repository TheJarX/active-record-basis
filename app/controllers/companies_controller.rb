class CompaniesController < ApplicationController
  def index
    render json: Company.all
  end

  def show
    @company = Company.find(params[:id])
    render json: @company
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: @company
    else
      render json: @company.errors
    end
  end

  private
  def company_params
    params.require(:company).permit(:name, :descriptiom, :start_date, :country)
  end
end
