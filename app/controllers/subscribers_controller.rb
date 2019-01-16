class SubscribersController < ApplicationController

    def new
        @user = User.find_by_id(current_user.id)
    end

    def create
    end
end
