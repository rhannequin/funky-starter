module Admin
  class VisitsController < AdminController
    def index
      @visits = Visit.includes(:user)
                     .order(started_at: :desc)
                     .page(params[:page])
    end

    def show
      @visit = Visit.includes(ahoy_events: :user)
                    .find(params[:id])
    end
  end
end
