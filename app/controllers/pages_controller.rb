class PagesController < ApplicationController
  def home
    api_url = "https://api.api-ninjas.com/v1/quotes?category=architecture"
    @response = HTTParty.get(api_url, :headers =>{'X-Api-Key' => 'FmBS+Uia3qHKniFEsbXCKg==NqGOsDOPhVp91zlE'})
  end
end
