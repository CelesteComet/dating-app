class ProfilesController < ApplicationController

  def update
  end

  def next
    @profiles = Profile.get_potentials_of(1)
  end
end
