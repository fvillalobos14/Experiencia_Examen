class RecordingsController < ApplicationController
    def index
        @recordings = Recording.all
    end

    def create
        @location = Location.find(params[:location_id])
        @recording = @location.recordings.create(recording_params)
        redirect_to location_path(@location)
    end

    def show
        @recording = Recording.find(params[:id])
    end

    def edit
        @recording = Recording.find(params[:id])
      end
     
    private
        def recording_params
            params.require(:recording).permit(:temp, :status)
        end
end
