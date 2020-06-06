class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: sighting, include: [:bird, :location], except: [:updated_at]
            # render json: sighting.to_json(:include => {
            # :bird => {:only => [:name, :species]},
            # :location => {:only => [:latitude, :longitude]}
            # }, :except => [:updated_at])
            # render json: {id:sighting.id, bird: sighting.bird, location: sighting.location}
            # render json: sighting
        else
            render json: {message: 'No sighting found with that id'}
        end
    end

    def index
        sightings = Sighting.all
        render json: sightings, include: [:bird, :location]
    end
end
