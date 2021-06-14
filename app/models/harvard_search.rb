class HarvardSearch

    attr_reader :paintings

    def initialize(query)

        url = "https://api.harvardartmuseums.org/object?classification=26"
        query = "&q=title:#{query}"
        apiKey = ENV["HARVARD_API_KEY"]
        api = "&apikey=#{apiKey}"
        size = "&size=10"
        data = RestClient.get(url + query + api + size)
        @paintings = JSON.parse(data)["records"]

    end 
end