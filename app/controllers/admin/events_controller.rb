module Admin
  class EventsController < AdminController
    def index
      @events = Ahoy::Event.includes(:visit, :user)
                           .order(time: :desc)
                           .page(params[:page])
    end
  end
end
