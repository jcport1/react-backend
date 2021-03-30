class FavoritesController < ApplicationController

    def all 

    end

    def create
 
        @new_painting = Painting.create( 
             
            id: params[:painting][:id],
            title: params[:painting][:title],
            image: params[:painting][:primaryimageurl],
            artist: params[:painting][:people][0][:name],
            century: params[:painting][:century],
            culture: params[:painting][:culture],
            medium: params[:painting][:medium],
            dimensions: params[:painting][:dimensions]) 
            
            render json: @new_painting
                
    end

    def destroy
        
        painting = Painting.find(params[:id])
        painting.destroy
        render json: {message: "unfavorited"}
    end

end 