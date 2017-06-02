class PagesController < ApplicationController
  require 'httparty'
  def index
    response = HTTParty.get('https://raw.githubusercontent.com/valterhenrique/timeliner-sample/master/sample-data.json')
    @events = JSON.parse(response.body)
    puts @events.to_json
  end

  def contact
  end

  def about
  end
end
