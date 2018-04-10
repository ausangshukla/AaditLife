class CompaniesController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource param_method: :company_params, except: [:create]

  before_action :set_company, only: [:show, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    render json: @companies
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    render json: @company
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    if @company.save
      render json: @company, status: :created, location: @company
    else
      render json: @company.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    if @company.update(company_params)
      render json: @company
    else
      render json: @company.errors, status: :unprocessable_entity
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    render json: @company
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :description, :allowed_signup_count)
    end
end
