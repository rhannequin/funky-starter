module Admin
  class UsersController < AdminController
    before_action :find_from_params_id, only: [:show, :destroy]

    def index
      @users = User.all
    end

    def show
    end

    def destroy
      @user.errors[:base] << :is_current_user unless can?(:destroy, @user)
      @user.destroy
      flash[:notice] = t(:'controllers.users.destroy.flash.success')
      redirect_to action: :index
    end

    private

    def find_from_params_id
      @user = User.find params[:id]
    end
  end
end
