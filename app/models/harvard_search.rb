class HarvardSearch

    attr_reader :paintings

    def initialize(query)

        url = "https://api.harvardartmuseums.org/object?classification=26"
        query = "&q=title:#{query}"
        api = "&apikey=1d2099ee-3f1e-46ff-bd4c-71d7ef213836"
        size = "&size=10"
        data = RestClient.get(url + query + api + size)
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