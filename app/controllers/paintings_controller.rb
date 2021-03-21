class PaintingsController < ApplicationController

    require 'rest-client'

    def index
        #make fetch call
        render json: Painting.all 
    end

    def show
        @painting = Painting.find_by_id(params[:id])
        render json: @painting 
    end

    def search
        query = params[:query] 
        response = Painting.search_results_from_harvard(query) 
        render json: response 
    end

    def painting_details

        paintingId = params[:id] 
        url = "https://api.harvardartmuseums.org/object?classification=26&q=#{paintingId}&apikey=1d2099ee-3f1e-46ff-bd4c-71d7ef213836"
        response = RestClient.get("#{url}")
        render json: response

    end

end
