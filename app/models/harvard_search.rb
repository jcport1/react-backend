class HarvardSearch

    attr_reader :paintings

    def initialize(query)

        url = "https://api.harvardartmuseums.org/object?classification=26"
        culture = "&culture=#{query}"
        api = "&apikey=1d2099ee-3f1e-46ff-bd4c-71d7ef213836"
        data = RestClient.get(url + culture + api)
        @paintings = JSON.parse(data)["records"]

        # paintings.each do |painting|
        #     Painting.create(
        #         title: painting["title"],
        #         image: painting["primaryimageurl"],
        #         artist: painting["people"][0]["name"]
        #     )
        # end

    end 
end