class Painting < ApplicationRecord

    def self.get_paintings_from_harvard(query = "Dog")
        #initiates new call to harvard art museum api
        response = HarvardSearch.new(query)
        #saves response to instance variable painting
        paintings = response.paintings 
        #calls class method below to create new instances for each painting
        paintings.each{|painting| create_from_harvard_data(painting)} 
    end

    def self.search_results_from_harvard(query = "Dog")
        #initiates new call to harvard art museum api
        response = HarvardSearch.new(query)
        #saves response to instance variable painting
        paintings = response.paintings 
        #calls class method below to create new instances for each painting
        # paintings.each{|painting| create_from_harvard_data(painting)} 
    end

    def self.create_from_harvard_data(painting)
        create(
            title: painting["title"],
            image: painting["primaryimageurl"],
            artist: painting["people"][0]["name"],
            century: painting["century"],
            culture: painting["culture"],
            medium: painting["medium"],
            dimensions: painting["dimensions"]
        )
    end
end
