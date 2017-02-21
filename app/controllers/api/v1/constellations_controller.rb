module Api::V1
  class ConstellationsController < ApplicationController

    def create
      @constellation = Constellation.create(name: params['name'], stars_array: params['stars_array'], user_id: params['user_id'])
    end

    def my_constellations
      @constellations = Constellation.where(user_id: active_user.id)
      render json: @constellations
    end

    def update
    end

    def destroy
    end

  end
end
