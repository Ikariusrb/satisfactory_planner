class ItemScraper
  BASE_SCRAPE_URL = "https://satisfactory-calculator.com/en/items"

  def call
    result = scraper.get(BASE_SCRAPE_URL)
    result
      .links
      .select { |link| link.resolved_uri.to_s.match?(/\/items\/detail\//) }
      .map do |link|
        link
          .href
          .split(/\//)
          .each_cons(2)
          .detect { |k, _| k == 'name' }
          .last
          .tr('+', ' ')
      end
      .uniq
  end

  private

  def scraper
    @scraper ||= Mechanize.new
  end

end
