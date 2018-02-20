class RecordingsController < ApplicationController
    def create
        @location = Location.find(params[:location_id])
        @recording = @location.recordings.create(recording_params)
        redirect_to location_path(@location)
    end
     
    private
        def recording_params
            params.require(:recording).permit(:temp, :status)
        end
end
