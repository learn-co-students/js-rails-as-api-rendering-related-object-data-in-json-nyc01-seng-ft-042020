class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: sightings.to_json(include: [:bird, :location])
    end
    
    def new
    
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
        if sighting
            render json: sighting.to_json(include: [:bird, :location])
          else
            render json: { message: 'No sighting found with that id' }
    end
    
    def destroy
    
    end
end
