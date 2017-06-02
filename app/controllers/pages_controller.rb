class PagesController < ApplicationController
  require 'httparty'
  def index
    response = HTTParty.get('https://raw.githubusercontent.com/valterhenrique/timeliner-sample/master/sample-data.json')

    @raw_data = JSON.parse(response.body)
    @sorted_data = @raw_data.sort_by { |s| DateTime.parse(s["date"]) }
    puts @sorted_data
  end

  def contact
  end

  def about
  end
end
