class PagesController < ApplicationController
  require 'httparty'
  def index
    response = HTTParty.get('https://raw.githubusercontent.com/valterhenrique/my-family-timeline/master/1985.json')
    @year = JSON.parse(response.body)
  end

  def contact
  end

  def about
  end
end
