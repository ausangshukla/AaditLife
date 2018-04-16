class CardioProfilesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :cardio_profile_params, except: [:create]


  # GET /cardio_profiles
  # GET /cardio_profiles.json
  def index
    render json: @cardio_profiles
  end

  # GET /cardio_profiles/1
  # GET /cardio_profiles/1.json
  def show
    render json: @cardio_profile
  end

  # POST /cardio_profiles
  # POST /cardio_profiles.json
  def create
    @cardio_profile = CardioProfile.new(cardio_profile_params)

    if @cardio_profile.save
      render json: @cardio_profile, status: :created, location: @cardio_profile
    else
      render json: @cardio_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cardio_profiles/1
  # PATCH/PUT /cardio_profiles/1.json
  def update
    if @cardio_profile.update(cardio_profile_params)
      render json: @cardio_profile, status: :ok, location: @cardio_profile
    else
      render json: @cardio_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cardio_profiles/1
  # DELETE /cardio_profiles/1.json
  def destroy
    @cardio_profile.destroy
  end

  respond_to :json

  def index
    @cardio_profiles = CardioProfile.all
    respond_with(@cardio_profiles)
  end

  def show
    respond_with(@cardio_profile)
  end

  def new
    @cardio_profile = CardioProfile.new
    respond_with(@cardio_profile)
  end

  def edit
  end

  def create
    @cardio_profile = CardioProfile.new(cardio_profile_params)
    @cardio_profile.save
    respond_with(@cardio_profile)
  end

  def update
    @cardio_profile.update(cardio_profile_params)
    respond_with(@cardio_profile)
  end

  def destroy
    @cardio_profile.destroy
    respond_with(@cardio_profile)
  end

  private
    def set_cardio_profile
      @cardio_profile = CardioProfile.find(params[:id])
    end

    def cardio_profile_params
      params.require(:cardio_profile).permit(:fitness_test_id, :user_id, :on_date, :speed, :bpm)
    end
end
