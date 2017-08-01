class ProfilesController < ApplicationController
  before_action :set_user, only: [:show, :update]

  def show
  end

  def update
    @profile.update(profile_params)
    redirect_to @profile
  end

  private

  def set_user
    @profile = Profile.find_by(user_id: current_user.id)
  end

  def profile_params
    params.require(:profile).permit(:first_name,
                                    :last_name,
                                    :birthdate,
                                    :sex,
                                    :phone,
                                    :photo_url)
  end
end

