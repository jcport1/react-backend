class Painting < ApplicationRecord


    def self.get_paintings_from_harvard
        #initiates new call to harvard art museum api
        response = HarvardSearch.new
        #saves response to instance variable painting
        paintings = response.paintings
        paintings.each{|painting| create_from_harvard_data(painting)}
        byebug 
    end

    def self.create_from_harvard_data(painting)
        create(
            title: painting["title"],
            image: painting["primaryimageurl"],
            artist: painting["people"][0]["name"] 
        )
    end
end
