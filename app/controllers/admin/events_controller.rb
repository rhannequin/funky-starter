module Admin
  class EventsController < AdminController
    def index
      @events = Ahoy::Event.includes(:visit, :user)
                           .order(time: :desc)
                           .page(params[:page])
    end

    def show
      @event = Ahoy::Event.includes(:visit, :user)
                          .find(params[:id])
    end
  end
end
