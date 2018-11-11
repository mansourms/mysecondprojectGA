class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @info_company = Company.find_by(id: params[:id])
    @cars = Company.find_by(id: params[:id]).cars
  end

  def new
    @new_company = Company.new
  end

  def create
    company = Company.create(company_params)
    redirect_to company_path(company)
  end

  def edit
    @new_company = Company.find_by(id: params[:id])
  end

  def update
    company = Company.find_by(id: params[:id])
    company.update(company_params)
    redirect_to company_path(company)
  end

  def destroy
    company = Company.find_by(id: params[:id])
    company.destroy
    redirect_to companies_path
  end

  private

  def company_params
    return params.require(:company).permit(:name, :country)
  end
end
