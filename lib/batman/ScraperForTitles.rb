class Batman::ScraperForTitles

    def scrape_imdb_titles
        #site = "https://www.imdb.com/list/ls009170651/?sort=list_order,asc&st_dt=&mode=simple&page=1&ref_=ttls_vw_smp"
        #doc = Nokogiri::HTML(URI.open(site))
        #things = doc.css("div.col-title")
        #puts things.text
        doc = Nokogiri::HTML(URI.open("https://www.imdb.com/list/ls009170651/?sort=list_order,asc&st_dt=&mode=simple&page=1&ref_=ttls_vw_smp"))
        binding.pry
        #title = doc.css("strong")
    end
end